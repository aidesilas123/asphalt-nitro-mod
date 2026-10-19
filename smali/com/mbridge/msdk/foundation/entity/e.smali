###### Class com.mbridge.msdk.foundation.entity.e (com.mbridge.msdk.foundation.entity.e)
.class public final Lcom/mbridge/msdk/foundation/entity/e;
.super Ljava/lang/Object;
.source "DescExceptionData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/mbridge/msdk/foundation/entity/e;->e:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->g:Z

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/entity/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/entity/e;->h()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/mbridge/msdk/foundation/entity/e;->e:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->g:Z

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/entity/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/entity/e;->h:Ljava/util/Map;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/entity/e;->h()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/mbridge/msdk/foundation/entity/e;->e:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->g:Z

    if-eqz p3, :cond_2d

    const/16 p3, 0xc8

    if-eq p1, p3, :cond_2a

    const/16 p3, 0xc9

    if-eq p1, p3, :cond_26

    const/16 p3, 0xcb

    if-eq p1, p3, :cond_22

    const/16 p3, 0xcd

    if-eq p1, p3, :cond_1e

    goto :goto_2d

    :cond_1e
    const/4 p1, 0x5

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    goto :goto_2d

    :cond_22
    const/4 p1, 0x6

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    goto :goto_2d

    :cond_26
    const/4 p1, 0x7

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    goto :goto_2d

    :cond_2a
    const/4 p1, 0x4

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    :cond_2d
    :goto_2d
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/entity/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/entity/e;->h()V

    return-void
.end method

.method private h()V
    .registers 2

    :try_start_0
    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    packed-switch v0, :pswitch_data_6c

    :pswitch_5
    goto/16 :goto_6b

    :pswitch_7
    const-string v0, "candidate failed"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto/16 :goto_6b

    :pswitch_d
    const-string v0, "load exception"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_12
    const-string v0, "ad over cap "

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_17
    const-string v0, "app already install"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_1c
    const-string v0, "adn no offer fill"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_21
    const-string v0, "current unit is loading"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_26
    const-string v0, " isready false error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_2b
    const-string v0, " no fill"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_30
    const-string v0, " load time out error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_35
    const-string v0, "template render error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_3a
    const-string v0, "big template render error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_3f
    const-string v0, "endcard template download error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_44
    const-string v0, "template download error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_49
    const-string v0, "big template download error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_4e
    const-string v0, "video download error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_53
    const-string v0, "v3 response error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_58
    const-string v0, "v3 time out"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_5d
    const-string v0, "v3 request error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    goto :goto_6b

    :pswitch_62
    const-string v0, "v3 params invalid"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    const-string v0, " unknown error"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->a:Ljava/lang/String;

    :goto_6b
    return-void

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_17
        :pswitch_12
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->e:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->g:Z

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->g:Z

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->e:I

    return v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/e;->d:I

    return-void
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->b:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->d:I

    return v0
.end method

.method public final g()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/e;->h:Ljava/util/Map;

    return-object v0
.end method
