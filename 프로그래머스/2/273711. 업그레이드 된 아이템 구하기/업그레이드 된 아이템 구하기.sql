-- 코드를 작성해주세요
SELECT ITEM_ID, ITEM_NAME, RARITY
FROM ITEM_INFO
WHERE ITEM_ID in (
    SELECT t.ITEM_ID
    FROM ITEM_TREE t
    JOIN ITEM_INFO i
    ON t.PARENT_ITEM_ID = i.ITEM_ID
    WHERE t.PARENT_ITEM_ID IS NOT NULL
    AND i.RARITY = 'RARE'
)
ORDER BY ITEM_ID DESC