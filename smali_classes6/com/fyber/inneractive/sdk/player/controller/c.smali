###### Class com.fyber.inneractive.sdk.player.controller.c (com.fyber.inneractive.sdk.player.controller.c)
.class public Lcom/fyber/inneractive/sdk/player/controller/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/web/c0;

.field public b:Lcom/fyber/inneractive/sdk/web/i$g;

.field public c:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

.field public d:Lcom/fyber/inneractive/sdk/web/i$d;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fyber/inneractive/sdk/flow/vast/b;Lcom/fyber/inneractive/sdk/model/vast/h;Lcom/fyber/inneractive/sdk/web/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/fyber/inneractive/sdk/web/i$g;->INLINE:Lcom/fyber/inneractive/sdk/web/i$g;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->b:Lcom/fyber/inneractive/sdk/web/i$g;

    sget-object v0, Lcom/fyber/inneractive/sdk/web/i$d;->ENABLED:Lcom/fyber/inneractive/sdk/web/i$d;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->d:Lcom/fyber/inneractive/sdk/web/i$d;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/flow/vast/b;->c()Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/flow/vast/b;->e()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/c;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Z)V

    :try_start_16
    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/flow/vast/b;->c()Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    move-result-object v0

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->c()Lcom/fyber/inneractive/sdk/config/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/config/j;->a()Lcom/fyber/inneractive/sdk/config/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/util/g;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Lcom/fyber/inneractive/sdk/config/i;)Z

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lcom/fyber/inneractive/sdk/player/controller/c;->a(Landroid/content/Context;Lcom/fyber/inneractive/sdk/web/b;Lcom/fyber/inneractive/sdk/model/vast/h;Z)Lcom/fyber/inneractive/sdk/web/c0;

    move-result-object p4

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-virtual {p0, p3}, Lcom/fyber/inneractive/sdk/player/controller/c;->a(Lcom/fyber/inneractive/sdk/model/vast/h;)V

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-virtual {p3}, Lcom/fyber/inneractive/sdk/web/d;->e()Lcom/fyber/inneractive/sdk/web/g;

    move-result-object p3

    if-eqz p3, :cond_46

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/z;->a()Lcom/fyber/inneractive/sdk/util/z;

    move-result-object p3

    iget-object p4, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-virtual {p4}, Lcom/fyber/inneractive/sdk/web/d;->e()Lcom/fyber/inneractive/sdk/web/g;

    move-result-object p4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-virtual {p3, p1, p4, v0}, Lcom/fyber/inneractive/sdk/util/z;->a(Landroid/content/Context;Landroid/view/View;Lcom/fyber/inneractive/sdk/util/z$e;)V

    :cond_46
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/web/d;->i()V

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/flow/vast/b;->d()I

    move-result p1

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/flow/vast/b;->a()I

    move-result p3

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/flow/vast/b;->b()Lcom/fyber/inneractive/sdk/config/b0;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/fyber/inneractive/sdk/renderers/g;->a(IILcom/fyber/inneractive/sdk/config/b0;)Lcom/fyber/inneractive/sdk/util/l0;

    move-result-object p1

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    iget p3, p1, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iget p1, p1, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    invoke-virtual {p2, p3, p1}, Lcom/fyber/inneractive/sdk/web/c0;->setAdDefaultSize(II)V
    :try_end_64
    .catchall {:try_start_16 .. :try_end_64} :catchall_65

    goto :goto_68

    :catchall_65
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    :goto_68
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    :goto_8
    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/fyber/inneractive/sdk/web/b;Lcom/fyber/inneractive/sdk/model/vast/h;Z)Lcom/fyber/inneractive/sdk/web/c0;
    .registers 14

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/h;->FMP_End_Card:Lcom/fyber/inneractive/sdk/model/vast/h;

    if-ne p3, v0, :cond_b

    new-instance p3, Lcom/fyber/inneractive/sdk/web/c;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, p4, v0}, Lcom/fyber/inneractive/sdk/web/c;-><init>(Landroid/content/Context;Lcom/fyber/inneractive/sdk/web/b;ZZ)V

    return-object p3

    :cond_b
    new-instance p2, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->b:Lcom/fyber/inneractive/sdk/web/i$g;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->d:Lcom/fyber/inneractive/sdk/web/i$d;

    sget-object v6, Lcom/fyber/inneractive/sdk/web/i$h;->AD_CONTROLLED:Lcom/fyber/inneractive/sdk/web/i$h;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    move v3, p4

    invoke-direct/range {v1 .. v8}, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;-><init>(Landroid/content/Context;ZLcom/fyber/inneractive/sdk/web/i$g;Lcom/fyber/inneractive/sdk/web/i$d;Lcom/fyber/inneractive/sdk/web/i$h;ZLcom/fyber/inneractive/sdk/measurement/a;)V

    return-object p2
.end method

.method public a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Z)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->c:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->e:Z

    sget-object v0, Lcom/fyber/inneractive/sdk/player/controller/c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    sget-object p1, Lcom/fyber/inneractive/sdk/web/i$d;->ENABLED:Lcom/fyber/inneractive/sdk/web/i$d;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->d:Lcom/fyber/inneractive/sdk/web/i$d;

    goto :goto_21

    :cond_17
    sget-object p1, Lcom/fyber/inneractive/sdk/web/i$d;->ENABLED:Lcom/fyber/inneractive/sdk/web/i$d;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->d:Lcom/fyber/inneractive/sdk/web/i$d;

    if-eqz p2, :cond_21

    sget-object p1, Lcom/fyber/inneractive/sdk/web/i$g;->INTERSTITIAL:Lcom/fyber/inneractive/sdk/web/i$g;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->b:Lcom/fyber/inneractive/sdk/web/i$g;

    :cond_21
    :goto_21
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/model/vast/h;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_b

    return-void

    :cond_b
    sget-object v1, Lcom/fyber/inneractive/sdk/player/controller/c$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_26

    const/4 v1, 0x3

    if-eq p1, v1, :cond_26

    const/4 v1, 0x4

    if-eq p1, v1, :cond_20

    goto :goto_31

    :cond_20
    sget p1, Lcom/fyber/inneractive/sdk/R$id;->inneractive_vast_endcard_iframe:I

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setId(I)V

    goto :goto_31

    :cond_26
    sget p1, Lcom/fyber/inneractive/sdk/R$id;->inneractive_vast_endcard_html:I

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setId(I)V

    goto :goto_31

    :cond_2c
    sget p1, Lcom/fyber/inneractive/sdk/R$id;->inneractive_vast_endcard_gif:I

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setId(I)V

    :goto_31
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/web/d$d;)V
    .registers 12

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    if-eqz v0, :cond_50

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->c:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->isFullscreenUnit()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/c0;->setAutoplayMRAIDVideos(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/web/c0;->setCenteringTagsRequired(Z)V

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/a;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->c:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->isFullscreenUnit()Z

    move-result v0

    if-eqz v0, :cond_40

    if-nez v1, :cond_40

    const-string v0, "<script type=\"text/javascript\">  var IaCloseBtnHelper = (function initIaCloseBtnHelper(){    var styleContent = \'.celtra-close-button {display:none !important;} .close-button {display:none !important;}\';    function getStyle(doc){      var style = doc.createElement(\'style\');      style.type = \'text/css\';      if (style.styleSheet){        style.styleSheet.cssText = styleContent;      } else {        style.appendChild(doc.createTextNode(styleContent));      }      return style;    }    function onDomReady(){      var iframes = window.document.getElementsByTagName(\'iframe\'),          i = 0,          len = iframes && iframes.length || 0;      for(; i < len; ++i){        if(!iframes[i].src){          try {            iframes[i].contentDocument.body.appendChild(getStyle(iframes[i].contentDocument));          }catch(e){          }}}}    function registerWindowEvents(){      window.addEventListener(\'load\', function onWindowLoad(){        window.removeEventListener(\'load\', onWindowLoad);        onDomReady();      });    }    return {      init: function init(){        if(window.document.readyState != \'complete\'){          registerWindowEvents();        }else{          onDomReady();        }}}})();  IaCloseBtnHelper.init();</script>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/c;->c:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/flow/n;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/fyber/inneractive/sdk/web/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/web/d$d;)V

    goto :goto_5d

    :cond_50
    new-instance p1, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;

    sget-object v0, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->UNSPECIFIED:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    sget-object v1, Lcom/fyber/inneractive/sdk/flow/g;->NO_WEBVIEW_CONTROLLER_AVAILABLE:Lcom/fyber/inneractive/sdk/flow/g;

    invoke-direct {p1, v0, v1}, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;Lcom/fyber/inneractive/sdk/flow/g;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lcom/fyber/inneractive/sdk/web/d$d;->a(Lcom/fyber/inneractive/sdk/web/d;Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;)V

    :goto_5d
    return-void
.end method
