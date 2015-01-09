<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo (http://leoeditor.com/leo_toc.html) -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://www.leo-editor.org/2011/leo" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="course-mde-tw.20140417093332.1998" a="E"><vh>@settings</vh>
<v t="course-mde-tw.20140417093332.1999"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="course-mde-tw.20140417093332.2000"><vh>@string initial_split_orientation = horizontal</vh></v>
<v t="course-mde-tw.20140417093332.2001"><vh>@string rst3_write_intermediate_extension = .rst</vh></v>
</v>
<v t="2014spring.20140430175148.1771"><vh>@edit README.md</vh></v>
<v t="2015.20140906140521.3770"><vh>@edit setup.py</vh></v>
<v t="course-mde-tw.20140417093332.2027" a="E"><vh>@path wsgi</vh>
<v t="2015.20140906140521.4229"><vh>@path static/templates</vh>
<v t="2015.20140906140521.4234"><vh>@edit meta.html</vh></v>
<v t="2015.20140906140521.4230"><vh>@edit index.html</vh></v>
<v t="2015.20140906140521.4233"><vh>@edit default.html</vh></v>
<v t="2015.20140906140521.4231"><vh>@edit docheck.html</vh></v>
<v t="2015.20140906140521.4235"><vh>@edit mytest.html</vh></v>
<v t="2015.20140906140521.4232"><vh>@edit footer.html</vh></v>
</v>
<v t="2015.20140907143819.2148"><vh>@edit pybean.py</vh></v>
<v t="course-mde-tw.20140417093332.2028"><vh>@auto application_orig.py</vh></v>
<v t="2015.20140907143819.1791" a="E"><vh>@file application</vh></v>
<v t="2015.20140907143819.2142" a="E"
expanded="2015.20140907143819.2144,"><vh>@file gear.py</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="2015.20140906140521.4229"></t>
<t tx="course-mde-tw.20140417093332.1998"></t>
<t tx="course-mde-tw.20140417093332.1999">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="course-mde-tw.20140417093332.2000">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="course-mde-tw.20140417093332.2001"></t>
<t tx="course-mde-tw.20140417093332.2027"></t>
</tnodes>
</leo_file>
