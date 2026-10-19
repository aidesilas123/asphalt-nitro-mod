###### Class com.fyber.inneractive.sdk.model.vast.f (com.fyber.inneractive.sdk.model.vast.f)
.class public Lcom/fyber/inneractive/sdk/model/vast/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/model/vast/k;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/measurement/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/fyber/inneractive/sdk/model/vast/l;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/model/vast/f;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/model/vast/f;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/model/vast/f;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lorg/w3c/dom/Node;)V
    .registers 9

    const-string v0, "AdVerifications"

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_b4

    const-string v0, "Verification"

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    const/4 v1, 0x1

    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto/16 :goto_9d

    :cond_26
    new-instance v2, Lcom/fyber/inneractive/sdk/measurement/f;

    invoke-direct {v2}, Lcom/fyber/inneractive/sdk/measurement/f;-><init>()V

    const-string v3, "vendor"

    invoke-static {v0, v3}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fyber/inneractive/sdk/measurement/f;->e:Ljava/lang/String;

    const-string v3, "JavaScriptResource"

    invoke-static {v0, v3}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_56

    iput-boolean v1, v2, Lcom/fyber/inneractive/sdk/measurement/f;->g:Z

    :try_start_3d
    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/fyber/inneractive/sdk/measurement/f;->f:Ljava/lang/String;

    const-string v4, "apiFramework"

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fyber/inneractive/sdk/measurement/f;->b:Ljava/lang/String;

    new-instance v3, Ljava/net/URL;

    iget-object v4, v2, Lcom/fyber/inneractive/sdk/measurement/f;->f:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/fyber/inneractive/sdk/measurement/f;->a:Ljava/net/URL;
    :try_end_54
    .catch Ljava/net/MalformedURLException; {:try_start_3d .. :try_end_54} :catch_55

    goto :goto_56

    :catch_55
    nop

    :cond_56
    :goto_56
    const-string v3, "TrackingEvents"

    invoke-static {v0, v3}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_8e

    const-string v4, "Tracking"

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6a
    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/model/vast/s;->a(Lorg/w3c/dom/Node;)Lcom/fyber/inneractive/sdk/model/vast/s;

    move-result-object v5

    if-eqz v4, :cond_6a

    iget-object v4, v5, Lcom/fyber/inneractive/sdk/model/vast/s;->a:Ljava/lang/String;

    const-string v6, "verificationNotExecuted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    sget-object v4, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_VERIFICATION_NOT_EXECUTED:Lcom/fyber/inneractive/sdk/model/vast/t;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/model/vast/s;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/fyber/inneractive/sdk/measurement/f;->a(Lcom/fyber/inneractive/sdk/model/vast/t;Ljava/lang/String;)V

    goto :goto_6a

    :cond_8e
    const-string v3, "VerificationParameters"

    invoke-static {v0, v3}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_9c

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/fyber/inneractive/sdk/measurement/f;->d:Ljava/lang/String;

    :cond_9c
    move-object v0, v2

    :goto_9d
    if-eqz v0, :cond_14

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/measurement/f;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Verification Found - %s"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/model/vast/f;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_b4
    return-void
.end method

.method public b(Lorg/w3c/dom/Node;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_7

    return-void

    :cond_7
    const-string v2, "AdSystem"

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_17

    const-string v3, "version"

    invoke-static {v2, v3}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    :cond_17
    const-string v2, "Error"

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    iput-object v2, v0, Lcom/fyber/inneractive/sdk/model/vast/f;->a:Ljava/lang/String;

    :cond_2b
    const-string v2, "Impression"

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/model/vast/f;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_53
    const-string v2, "Creatives"

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    const-string v3, "type"

    if-eqz v2, :cond_2eb

    const-string v4, "Creative"

    invoke-static {v2, v4}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2eb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    if-nez v4, :cond_7c

    move-object/from16 v16, v2

    const/4 v5, 0x0

    goto/16 :goto_2e0

    :cond_7c
    new-instance v6, Lcom/fyber/inneractive/sdk/model/vast/k;

    invoke-direct {v6}, Lcom/fyber/inneractive/sdk/model/vast/k;-><init>()V

    const-string v7, "AdID"

    invoke-static {v4, v7}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "id"

    invoke-static {v4, v7}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "sequence"

    invoke-static {v4, v8}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    const-string v8, "Linear"

    invoke-static {v4, v8}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    const-string v9, "apiFramework"

    const-string v10, "height"

    const-string v11, "width"

    const-string v12, "Tracking"

    const-string v13, "TrackingEvents"

    if-eqz v8, :cond_1d3

    new-instance v14, Lcom/fyber/inneractive/sdk/model/vast/n;

    invoke-direct {v14}, Lcom/fyber/inneractive/sdk/model/vast/n;-><init>()V

    const-string v15, "MediaFiles"

    invoke-static {v8, v15}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    if-eqz v15, :cond_142

    const-string v5, "MediaFile"

    invoke-static {v15, v5}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_142

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Lcom/fyber/inneractive/sdk/model/vast/n;->a:Ljava/util/List;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_142

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Node;

    if-nez v15, :cond_dc

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    const/4 v2, 0x0

    goto :goto_136

    :cond_dc
    move-object/from16 v16, v2

    new-instance v2, Lcom/fyber/inneractive/sdk/model/vast/o;

    invoke-direct {v2}, Lcom/fyber/inneractive/sdk/model/vast/o;-><init>()V

    move-object/from16 v17, v5

    const-string v5, "delivery"

    invoke-static {v15, v5}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/fyber/inneractive/sdk/model/vast/o;->a:Ljava/lang/String;

    invoke-static {v15, v11}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/fyber/inneractive/sdk/model/vast/o;->b:Ljava/lang/Integer;

    invoke-static {v15, v10}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/fyber/inneractive/sdk/model/vast/o;->c:Ljava/lang/Integer;

    invoke-static {v15, v3}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/fyber/inneractive/sdk/model/vast/o;->d:Ljava/lang/String;

    invoke-static {v15, v7}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v15, v9}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/fyber/inneractive/sdk/model/vast/o;->f:Ljava/lang/String;

    const-string v5, "bitrate"

    invoke-static {v15, v5}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/fyber/inneractive/sdk/model/vast/o;->e:Ljava/lang/Integer;

    const-string v5, "maintainAspectRatio"

    invoke-static {v15, v5}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_121

    :try_start_11c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_11f
    .catch Ljava/lang/NumberFormatException; {:try_start_11c .. :try_end_11f} :catch_120

    goto :goto_121

    :catch_120
    nop

    :cond_121
    :goto_121
    const-string v5, "scalable"

    invoke-static {v15, v5}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_130

    :try_start_12d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_130
    .catch Ljava/lang/NumberFormatException; {:try_start_12d .. :try_end_130} :catch_130

    :catch_130
    :cond_130
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/fyber/inneractive/sdk/model/vast/o;->g:Ljava/lang/String;

    :goto_136
    if-eqz v2, :cond_13d

    iget-object v5, v14, Lcom/fyber/inneractive/sdk/model/vast/n;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13d
    move-object/from16 v2, v16

    move-object/from16 v5, v17

    goto :goto_c8

    :cond_142
    move-object/from16 v16, v2

    const-string v2, "VideoClicks"

    invoke-static {v8, v2}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_18d

    const-string v5, "ClickThrough"

    invoke-static {v2, v5}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lcom/fyber/inneractive/sdk/model/vast/n;->c:Ljava/lang/String;

    const-string v5, "ClickTracking"

    invoke-static {v2, v5}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v14, Lcom/fyber/inneractive/sdk/model/vast/n;->d:Ljava/util/List;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_171
    :goto_171
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    invoke-static {v5}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_171

    iget-object v15, v14, Lcom/fyber/inneractive/sdk/model/vast/n;->d:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_171

    :cond_18d
    invoke-static {v8, v13}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1c2

    invoke-static {v2, v12}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v14, Lcom/fyber/inneractive/sdk/model/vast/n;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1aa
    :goto_1aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    invoke-static {v5}, Lcom/fyber/inneractive/sdk/model/vast/s;->a(Lorg/w3c/dom/Node;)Lcom/fyber/inneractive/sdk/model/vast/s;

    move-result-object v5

    if-eqz v5, :cond_1aa

    iget-object v15, v14, Lcom/fyber/inneractive/sdk/model/vast/n;->b:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1aa

    :cond_1c2
    const-string v2, "Duration"

    invoke-static {v8, v2}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1d0

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/fyber/inneractive/sdk/model/vast/n;->e:Ljava/lang/String;

    :cond_1d0
    iput-object v14, v6, Lcom/fyber/inneractive/sdk/model/vast/k;->a:Lcom/fyber/inneractive/sdk/model/vast/n;

    goto :goto_1d5

    :cond_1d3
    move-object/from16 v16, v2

    :goto_1d5
    const-string v2, "CompanionAds"

    invoke-static {v4, v2}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2df

    const-string v4, "Companion"

    invoke-static {v2, v4}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v6, Lcom/fyber/inneractive/sdk/model/vast/k;->b:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f0
    :goto_1f0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    if-nez v4, :cond_201

    const/4 v5, 0x0

    goto/16 :goto_2d6

    :cond_201
    new-instance v5, Lcom/fyber/inneractive/sdk/model/vast/g;

    invoke-direct {v5}, Lcom/fyber/inneractive/sdk/model/vast/g;-><init>()V

    invoke-static {v4, v11}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->a:Ljava/lang/Integer;

    invoke-static {v4, v10}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->b:Ljava/lang/Integer;

    invoke-static {v4, v7}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->c:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "expandedWidth"

    invoke-static {v4, v8}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    const-string v8, "expandedHeight"

    invoke-static {v4, v8}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    const-string v8, "StaticResource"

    invoke-static {v4, v8}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_242

    new-instance v14, Lcom/fyber/inneractive/sdk/model/vast/j;

    invoke-direct {v14}, Lcom/fyber/inneractive/sdk/model/vast/j;-><init>()V

    const-string v15, "creativeType"

    invoke-static {v8, v15}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/fyber/inneractive/sdk/model/vast/j;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Lcom/fyber/inneractive/sdk/model/vast/j;->b:Ljava/lang/String;

    iput-object v14, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->d:Lcom/fyber/inneractive/sdk/model/vast/j;

    :cond_242
    const-string v8, "HTMLResource"

    invoke-static {v4, v8}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_250

    invoke-static {v8}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->f:Ljava/lang/String;

    :cond_250
    const-string v8, "IFrameResource"

    invoke-static {v4, v8}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_25e

    invoke-static {v8}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->e:Ljava/lang/String;

    :cond_25e
    const-string v8, "CompanionClickThrough"

    invoke-static {v4, v8}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_26c

    invoke-static {v8}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->g:Ljava/lang/String;

    :cond_26c
    const-string v8, "CompanionClickTracking"

    invoke-static {v4, v8}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2a1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->h:Ljava/util/List;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_285
    :goto_285
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2a1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Node;

    invoke-static {v14}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_285

    iget-object v15, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->h:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_285

    :cond_2a1
    invoke-static {v4, v13}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_2d6

    invoke-static {v4, v12}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2d6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->j:Ljava/util/List;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2be
    :goto_2be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2d6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Node;

    invoke-static {v8}, Lcom/fyber/inneractive/sdk/model/vast/s;->a(Lorg/w3c/dom/Node;)Lcom/fyber/inneractive/sdk/model/vast/s;

    move-result-object v8

    if-eqz v8, :cond_2be

    iget-object v14, v5, Lcom/fyber/inneractive/sdk/model/vast/g;->j:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2be

    :cond_2d6
    :goto_2d6
    if-eqz v5, :cond_1f0

    iget-object v4, v6, Lcom/fyber/inneractive/sdk/model/vast/k;->b:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f0

    :cond_2df
    move-object v5, v6

    :goto_2e0
    if-eqz v5, :cond_2e7

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/model/vast/f;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e7
    move-object/from16 v2, v16

    goto/16 :goto_69

    :cond_2eb
    const-string v2, "Extensions"

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3d5

    const-string v4, "Extension"

    invoke-static {v2, v4}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2ff
    :goto_2ff
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-static {v4, v3}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AdVerifications"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31a

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/model/vast/f;->a(Lorg/w3c/dom/Node;)V

    :cond_31a
    invoke-static {v4, v3}, Lcom/fyber/inneractive/sdk/util/v0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FMPCompanionAssets"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2ff

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "parseFMPCompanionAssetsTag"

    invoke-static {v7, v5}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4, v6}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_2ff

    new-instance v5, Lcom/fyber/inneractive/sdk/model/vast/l;

    invoke-direct {v5}, Lcom/fyber/inneractive/sdk/model/vast/l;-><init>()V

    const-string v6, "Name"

    invoke-static {v4, v6}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_347

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/fyber/inneractive/sdk/model/vast/l;->a:Ljava/lang/String;

    :cond_347
    const-string v6, "Description"

    invoke-static {v4, v6}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_355

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/fyber/inneractive/sdk/model/vast/l;->b:Ljava/lang/String;

    :cond_355
    const-string v6, "Icons"

    invoke-static {v4, v6}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_386

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/fyber/inneractive/sdk/model/vast/l;->c:Ljava/util/List;

    const-string v7, "Icon"

    invoke-static {v6, v7}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_370
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_386

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Node;

    invoke-static {v7}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/fyber/inneractive/sdk/model/vast/l;->c:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_370

    :cond_386
    const-string v6, "Rating"

    invoke-static {v4, v6}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_39a

    :try_start_38e
    invoke-static {v6}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lcom/fyber/inneractive/sdk/model/vast/l;->d:F
    :try_end_398
    .catch Ljava/lang/Exception; {:try_start_38e .. :try_end_398} :catch_399

    goto :goto_39a

    :catch_399
    nop

    :cond_39a
    :goto_39a
    const-string v6, "Screenshots"

    invoke-static {v4, v6}, Lcom/fyber/inneractive/sdk/util/v0;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_3d1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/fyber/inneractive/sdk/model/vast/l;->e:Ljava/util/List;

    const-string v6, "Screenshot"

    invoke-static {v4, v6}, Lcom/fyber/inneractive/sdk/util/v0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3b5
    :goto_3b5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/util/v0;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3b5

    iget-object v7, v5, Lcom/fyber/inneractive/sdk/model/vast/l;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b5

    :cond_3d1
    iput-object v5, v0, Lcom/fyber/inneractive/sdk/model/vast/f;->e:Lcom/fyber/inneractive/sdk/model/vast/l;

    goto/16 :goto_2ff

    :cond_3d5
    invoke-virtual/range {p0 .. p1}, Lcom/fyber/inneractive/sdk/model/vast/f;->a(Lorg/w3c/dom/Node;)V

    return-void
.end method
