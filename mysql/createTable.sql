-- opedデータベースにcontents_testテーブルを作成
CREATE TABLE IF NOT EXISTS oped.contents_test (
    id         INT            NOT NULL PRIMARY KEY AUTO_INCREMENT -- ID(主キー) 
   ,title      VARCHAR(1000)  NOT NULL                            -- 曲名
   ,artist     VARCHAR(1000)  NOT NULL                            -- アーティスト
   ,tieupTitle VARCHAR(1000)  NOT NULL                            -- タイアップタイトル
   ,soldCount  INT            DEFAULT 0                           -- 月間?売上
   ,playCount  INT            DEFAULT 0                           -- 再生回数
   ,memo       VARCHAR(30000) NULL                                -- メモ
   ,onairDt    DATE           NULL                                -- 放送開始時期
   ,addDt      DATETIME       NOT NULL                            -- 作成日時
   ,changeDt   DATETIME       NULL                                -- 変更日時
   ,funcName   VARCHAR(100)   NOT NULL                            -- 操作アプリケーション名
   ,deleted    INT            DEFAULT 0                           -- 論理削除フラグ
);
   