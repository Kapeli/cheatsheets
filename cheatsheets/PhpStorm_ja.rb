cheatsheet do
  title 'PhpStorm'
  docset_file_name 'PhpStorm_Shortcuts'
  keyword 'phpstorm'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'General'
    entry do
      command 'CMD+0-9'
      name 'ツールウィンドウを開く'
    end
    entry do
      command 'CMD+ALT+Y'
      name '同期'
    end
    entry do
      command 'CMD+SHIFT+F12'
      name 'すべてのツールウィンドウを開く/閉じる'
    end
    entry do
      command 'ALT+SHIFT+F'
      name 'お気に入りに追加'
    end
    entry do
      command 'ALT+SHIFT+I'
      name '現在のプロファイルでファイル内を検査'
    end
    entry do
      command 'CTRL+§'
      name 'スキーマ変更メニュー表示'
    end
    entry do
      command 'CTRL+Tab'
      name 'タブ/ツールウィンドウ間移動'
    end
    entry do
      command 'CMD+SHIFT+A'
      name 'アクションを探す'
    end
    entry do
      command 'Shift+Shift'
      name 'どこでも検索'
    end
  end


  category do
    id 'Editing'
    entry do
      command 'CTRL+Space'
      name 'コード補完(ベーシック)'
      notes '変数やクラス名、メソッド名のコード補完'
    end
    entry do
      command 'CTRL+SHIFT+Space'
      name 'コード補完(スマート)'
      notes '定義されているメソッドや適切な変数、クラスをコード補完'
    end
    entry do
      command 'CMD+SHIFT+Enter'
      name '現在のステートメントを完了'
    end
    entry do
      command 'CTRL+J'
      name 'クイックドキュメントを表示'
    end
    entry do
      command 'SHIFT+F1'
      name '外部ドキュメントを表示'
    end
    entry do
      command 'CMD+mouse over code'
      name '概要を表示'
    end
    entry do
      command 'CMD+F1'
      name 'カーソル位置のエラー概要を表示'
    end
    entry do
      command 'CMD+N'
      command 'CTRL+N'
      command 'CTRL+Enter'
      name 'コード生成'
      notes 'アクセサ、コンストラクタなど'
    end
    entry do
      command 'CTRL+O'
      name 'オーバーロードできるメソッドを表示'
    end
    entry do
      command 'CTRL+I'
      name 'インプリメントできるメソッドを表示'
    end
    entry do
      command 'CMD+ALT+T'
      name 'コードを囲む'
      notes '`if..else`, `try..catch`, `for` など'
    end
    entry do
      command 'CMD+/'
      name 'コメントイン/コメントアウト'
    end
    entry do
      command 'CMD+ALT+/'
      name 'ブロックコメントのコメントイン/コメントアウト'
    end
    entry do
      command 'Ctrl+W'
      name 'カーソル下の単語/ブロック単位で範囲選択を広げる'
    end
    entry do
      command 'Ctrl+Shift+W'
      name 'カーソル下の単語/ブロック単位で範囲選択を狭める'
    end
    entry do
      command 'CTRL+SHIFT+Q'
      name 'コンテキストを表示'
    end
    entry do
      command 'ALT+Enter'
      name '検査結果及びクイックフィックスを表示'
    end
    entry do
      command 'CMD+ALT+L'
      name 'コードフォーマットの実施'
    end
    entry do
      command 'CTRL+ALT+O'
      name 'インポートの最適化'
    end
    entry do
      command 'CTRL+ALT+I'
      name '行の自動インデント'
    end
    entry do
      command 'Tab'
      name '現在の行を1つインデントを増やす'
    end
    entry do
      command 'SHIFT+Tab'
      name '現在の行を1つインデントを減らす'
    end
    entry do
      command 'CMD+X'
      name '選択範囲 または 現在の行を切り取り'
    end
    entry do
      command 'CMD+C'
      name '選択範囲 または 現在の行をコピー'
    end
    entry do
      command 'CMD+V'
      name 'クリップボードから貼り付け'
    end
    entry do
      command 'CMD+SHIFT+V'
      name 'バッファから貼り付け'
    end
    entry do
      command 'CMD+D'
      name '選択範囲 または 現在の行を複製'
    end
    entry do
      command 'CMD+Backspace'
      name '削除'
    end
    entry do
      command 'CTRL+SHIFT+J'
      name '下の行との連結'
    end
    entry do
      command 'CMD+Enter'
      name '現在の行を分割'
    end
    entry do
      command 'SHIFT+Enter'
      name '新しい行に移動'
    end
    entry do
      command 'CMD+SHIFT+U'
      name '選択範囲を大文字/小文字を切り替え'
    end
    entry do
      command 'CMD+SHIFT+]'
      name '現在のブロックの末尾に移動'
    end
    entry do
      command 'CMD+SHIFT+['
      name '現在のブロックの先頭に移動'
    end
    entry do
      command 'ALT+Delete'
      name 'カーソルから行末まで削除'
    end
    entry do
      command 'ALT+Backspace'
      name 'カーソルから行頭まで削除'
    end
    entry do
      command 'CMD+"+"'
      name 'コードブロックを展開する'
    end
    entry do
      command 'CMD+"-"'
      name 'コードブロックをたたむ'
    end
    entry do
      command 'CMD+SHIFT+"+"'
      name 'すべてのコードブロックを展開する'
    end
    entry do
      command 'CMD+SHIFT+"-"'
      name 'すべてのコードブロックをたたむ'
    end
    entry do
      command 'CMD+W'
      name '現在のタブを閉じる'
    end
  end


  category do
    id 'Search / Replace'
    entry do
      command 'CMD+F'
      name '検索'
    end
    entry do
      command 'CMD+G'
      name '次を検索'
    end
    entry do
      command 'CMD+SHIFT+G'
      name '前を検索'
    end
    entry do
      command 'CMD+R'
      name '置換'
    end
    entry do
      command 'CMD+SHIFT+F'
      name 'プロジェクト全体から検索'
    end
    entry do
      command 'CMD+SHIFT+R'
      name 'プロジェクト全体から置換'
    end
  end


  category do
    id 'Usage Search'
    entry do
      command 'ALT+F7'
      name '利用箇所を検索'
    end
    entry do
      command 'CMD+F7'
      name 'ファイル内の利用箇所を検索'
    end
    entry do
      command 'CMD+SHIFT+F7'
      name 'ファイル内の利用箇所をハイライト表示'
    end
    entry do
      command 'CMD+ALT+F7'
      name '利用箇所を表示'
    end
  end


  category do
    id 'Compile and Run'
    entry do
      command 'CMD+F9'
      name 'プロジェクトをビルド'
    end
    entry do
      command 'CTRL+R'
      name '実行'
    end
    entry do
      command 'CTRL+ALT+R'
      name '設定を選択して実行'
    end
    entry do
      command 'CTRL+D'
      name 'デバッグ'
    end
    entry do
      command 'CTRL+ALT+D'
      name '設定を選択してデバッグ'
    end
    entry do
      command 'CTRL+SHIFT+R'
      name 'エディタのコンテキストを選択して実行'
    end
  end


  category do
    id 'Debugging'
    entry do
      command 'F8'
      name 'ステップオーバー'
    end
    entry do
      command 'F7'
      name 'ステップイン'
    end
    entry do
      command 'SHIFT+F7'
      name 'スマートステップイン'
    end
    entry do
      command 'SHIFT+F8'
      name 'ステップアウト'
    end
    entry do
      command 'ALT+F9'
      name 'カーソル位置までステップオーバー'
    end
    entry do
      command 'ALT+F8'
      name 'コードの動的実行'
    end
    entry do
      command 'CMD+ALT+R'
      name 'プログラムの再開'
    end
    entry do
      command 'CMD+F8'
      name 'ブレイクポイントをトグル'
    end
    entry do
      command 'CMD+SHIFT+F8'
      name '全ブレイクポイントを表示'
    end
  end


  category do
    id 'Navigation'
    entry do
      command 'CMD+O'
      name 'クラスを検索'
    end
    entry do
      command 'CMD+SHIFT+O'
      name 'ファイルを検索'
    end
    entry do
      command 'CMD+ALT+O'
      name 'シンボルを検索'
    end
    entry do
      command 'CTRL+Arrow Left'
      name '次のタブへ移動'
    end
    entry do
      command 'CTRL+Arrow Right'
      name '前のタブに移動'
    end
    entry do
      command 'F12'
      name '前のツールウィンドウへ移動'
    end
    entry do
      command 'Esc'
      name 'ツールウィンドウからエディタへ移動'
    end
    entry do
      command 'SHIFT+Esc'
      name '現在のアクティブ または 1つ前のアクティブウィンドウを非表示'
    end
    entry do
      command 'CMD+SHIFT+F4'
      name '現在のタブを閉じる'
    end
    entry do
      command 'CMD+L'
      name '指定した行に移動'
    end
    entry do
      command 'CMD+E'
      name '直近に開いたファイル一覧を表示'
    end
    entry do
      command 'CMD+ALT+Arrow Left'
      name '直前のカーソル位置へ移動'
    end
    entry do
      command 'CMD+ALT+Arrow Right'
      name '直後のカーソル位置へ移動'
    end
    entry do
      command 'CMD+SHIFT+Delete'
      name '最後に編集した行へ移動'
    end
    entry do
      command 'CMD+ALT+Arrow Left'
      name '直前のカーソル位置へ移動'
    end
    entry do
      command 'ALT+F1'
      name '現在のファイルを○○で開く'
    end
    entry do
      command 'CMD+B'
      name '定義元に移動'
    end
    entry do
      command 'CMD+ALT+B'
      name '実装クラスへ移動'
    end
    entry do
      command 'CTRL+SHIFT+B'
      name 'クラスの定義元に移動'
    end
    entry do
      command 'CMD+U'
      name 'スーパークラス/スーパーメソッドに移動'
    end
    entry do
      command 'CTRL+Arrow Up'
      name '1つ手前のメソッドに移動'
    end
    entry do
      command 'CTRL+Arrow Down'
      name '1つ先のメソッドに移動'
    end
    entry do
      command 'CMD+['
      name 'コードブロックの先頭に移動'
    end
    entry do
      command 'CMD+]'
      name 'コードブロックの末尾に移動'
    end
    entry do
      command 'CMD+F12'
      name 'ファイル構造をポップアップ表示'
    end
    entry do
      command 'Control+H'
      name 'クラスの階層構造を表示'
    end
    entry do
      command 'CMD+SHIFT+H'
      name 'メソッドの階層構造を表示'
    end
    entry do
      command 'CTRL+ALT+H'
      name 'コール状態の階層構造を表示'
    end
    entry do
      command 'F2'
      name '次のエラーに移動'
    end
    entry do
      command 'SHIFT+F2'
      name '前のエラーに移動'
    end
    entry do
      command 'F4'
      name 'ファイルを開く'
    end
    entry do
      command 'CMD+Arrow Down'
      name 'ファイルを開く'
    end
    entry do
      command 'F3'
      name '数字でブックマークをつける/はずす'
    end
    entry do
      command 'ALT+F3'
      name '数字/文字列でのブックマークをつける/はずす'
    end
    entry do
      command 'CTRL+0...CTRL+9'
      name '数字でのブックマークへ移動'
    end
    entry do
      command 'CMD+F3'
      name 'ブックマーク一覧をポップアップ表示'
    end
  end


  category do
    id 'Refactoring'
    entry do
      command 'CTRL+T'
      name 'カーソル位置をリファクタリング'
    end
    entry do
      command 'F5'
      name 'コピー'
    end
    entry do
      command 'F6'
      name '移動'
    end
    entry do
      command 'CMD+Delete'
      name 'セーフデリート'
    end
    entry do
      command 'SHIFT+F6'
      name '名前変更'
    end
    entry do
      command 'CMD+F6'
      name 'シグネチャ変更'
    end
    entry do
      command 'CMD+ALT+N'
      name 'インライン'
    end
    entry do
      command 'CMD+ALT+M'
      name 'メソッドを抜き出す'
    end
    entry do
      command 'CMD+ALT+V'
      name '変数を追加'
    end
    entry do
      command 'CMD+ALT+P'
      name 'パラメータを追加'
    end
    entry do
      command 'CMD+ALT+E'
      name 'プロパティを追加'
    end
    entry do
      command 'CMD+ALT+C'
      name '定数を追加'
    end
    entry do
      command 'CMD+ALT+I'
      name 'インスタンス変数を追加'
    end
  end


  category do
    id 'VCS / Local History'
    entry do
      command 'CMD+K'
      name 'コミット'
    end
    entry do
      command 'CMD+T'
      name 'アップデート'
    end
    entry do
      command 'ALT+SHIFT+C'
      name '変更箇所を表示'
    end
      entry do
      command 'CTRL+V'
      name 'VCS操作をポップアップ'
    end
  end


  category do
    id 'Live Templates'
    entry do
      command 'CMD+ALT+J'
      name 'スニペットで包む'
    end
    entry do
      command 'CMD+J'
      name 'スニペットを挿入'
    end
  end

end
