SELECT
    a.ACCOUNT_IDENTIFIER,
    a.LAN_CD,
    a.BEST_CARD_NUMBER,
    decision_id, 
    CASE WHEN a.BEST_CARD_NUMBER = 1 THEN 'Y' ELSE 'N' END AS best_card_excl_flag 
 FROM (
    SELECT
        a.ACCOUNT_IDENTIFIER,
        a.LAN_CD,
        a.decision_id,
        row_number() OVER (partition BY CUST_GRP_MBRP_ID ORDER BY COALESCE(BEST_CARD_RANK,999)) AS BEST_CARD_NUMBER 
    FROM Accounts_Inclusions_Exclusions_Flagged A
 ) A;