###### Class com.fyber.inneractive.sdk.player.controller.e (com.fyber.inneractive.sdk.player.controller.e)
.class public Lcom/fyber/inneractive/sdk/player/controller/e;
.super Lcom/fyber/inneractive/sdk/player/controller/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/player/controller/n<",
        "Lcom/fyber/inneractive/sdk/player/controller/w;",
        ">;"
    }
.end annotation


# instance fields
.field public C:Z

.field public D:Z

.field public E:Z


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/c;Lcom/fyber/inneractive/sdk/player/ui/l;Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;ZZLcom/fyber/inneractive/sdk/config/enums/Skip;ZLjava/lang/String;Z)V
    .registers 21

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/fyber/inneractive/sdk/player/controller/n;-><init>(Lcom/fyber/inneractive/sdk/player/c;Lcom/fyber/inneractive/sdk/player/ui/l;Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;ZLcom/fyber/inneractive/sdk/config/enums/Skip;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/fyber/inneractive/sdk/player/controller/e;->C:Z

    iput-boolean v0, v9, Lcom/fyber/inneractive/sdk/player/controller/e;->D:Z

    move v0, p5

    iput-boolean v0, v9, Lcom/fyber/inneractive/sdk/player/controller/e;->C:Z

    move/from16 v0, p8

    iput-boolean v0, v9, Lcom/fyber/inneractive/sdk/player/controller/e;->E:Z

    return-void
.end method

.method public static d(I)Z
    .registers 2

    const/4 v0, -0x1

    if-le p0, v0, :cond_9

    const/16 v0, 0x8

    if-gt p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method


# virtual methods
.method public A()V
    .registers 3

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->A()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/e;->C:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->i()V

    :cond_12
    return-void
.end method

.method public B()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/e;->C:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public D()V
    .registers 3

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->D()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/e;->C:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->i()V

    :cond_1e
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/util/k0;)V
    .registers 10

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    check-cast v0, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/c0;->i:Lcom/fyber/inneractive/sdk/config/enums/TapAction;

    sget-object v1, Lcom/fyber/inneractive/sdk/config/enums/TapAction;->CTR:Lcom/fyber/inneractive/sdk/config/enums/TapAction;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->VIDEO:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    invoke-virtual {p0, v2, v0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;Lcom/fyber/inneractive/sdk/util/k0;)Z

    goto/16 :goto_7f

    :cond_14
    sget-object v1, Lcom/fyber/inneractive/sdk/config/enums/TapAction;->FULLSCREEN:Lcom/fyber/inneractive/sdk/config/enums/TapAction;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2f

    sget-object v1, Lcom/fyber/inneractive/sdk/config/enums/TapAction;->DO_NOTHING:Lcom/fyber/inneractive/sdk/config/enums/TapAction;

    if-ne v0, v1, :cond_1e

    goto :goto_2f

    :cond_1e
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    aput-object v0, p1, v3

    const-string v0, "% sonVideoClicked called, but we recieved an unknown tap action %s"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7f

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    const-class v1, Lcom/fyber/inneractive/sdk/config/global/features/r;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/config/global/features/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/fyber/inneractive/sdk/config/global/features/r;->e:Lcom/fyber/inneractive/sdk/config/global/features/r$b;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/global/features/r$b;->mKey:Ljava/lang/String;

    const-string v4, "click_action"

    invoke-virtual {v0, v4, v1}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/global/features/r$b;->values()[Lcom/fyber/inneractive/sdk/config/global/features/r$b;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v4, :cond_5c

    aget-object v6, v1, v5

    iget-object v7, v6, Lcom/fyber/inneractive/sdk/config/global/features/r$b;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    goto :goto_5e

    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_5c
    sget-object v6, Lcom/fyber/inneractive/sdk/config/global/features/r$b;->NONE:Lcom/fyber/inneractive/sdk/config/global/features/r$b;

    :goto_5e
    sget-object v0, Lcom/fyber/inneractive/sdk/config/global/features/r$b;->OPEN:Lcom/fyber/inneractive/sdk/config/global/features/r$b;

    invoke-virtual {v6, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->w:Lcom/fyber/inneractive/sdk/ignite/k;

    sget-object v1, Lcom/fyber/inneractive/sdk/ignite/k;->NONE:Lcom/fyber/inneractive/sdk/ignite/k;

    if-eq v0, v1, :cond_77

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->E:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/ignite/c;->d()Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_78

    :cond_77
    const/4 v3, 0x0

    :goto_78
    if-eqz v3, :cond_7f

    :cond_7a
    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->VIDEO:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    invoke-virtual {p0, v2, v0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;Lcom/fyber/inneractive/sdk/util/k0;)Z

    :cond_7f
    :goto_7f
    return-void
.end method

.method public a(Z)V
    .registers 4

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_20

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_20

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->f()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/n;->h(Z)V

    :cond_20
    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Z)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->h:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->v()V

    goto :goto_b

    :cond_8
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/e;->k()Z

    :goto_b
    return-void
.end method

.method public d(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->d(Z)V

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/e;->C:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/ui/l;->i()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Z)V

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->f:I

    :cond_14
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->C()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz p1, :cond_2c

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-nez p1, :cond_20

    goto :goto_2c

    :cond_20
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Preparing:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq p1, v1, :cond_2a

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Prepared:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-ne p1, v1, :cond_2c

    :cond_2a
    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    :goto_2d
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v1, p1}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->c(Z)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/ui/c;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/player/ui/c;-><init>()V

    iput-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/ui/c;->b:Z

    new-instance v0, Lcom/fyber/inneractive/sdk/player/ui/b;

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/b;-><init>(Lcom/fyber/inneractive/sdk/player/ui/c;)V

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Lcom/fyber/inneractive/sdk/player/ui/b;)V

    return-void
.end method

.method public k()Z
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->k()Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_76

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_76

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/e;->D:Z

    if-eqz v0, :cond_12

    goto :goto_76

    :cond_12
    const/4 v0, 0x2

    :try_start_13
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_2a

    :try_start_25
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2b

    goto :goto_2c

    :catchall_2a
    const/4 v4, 0x0

    :catchall_2b
    const/4 v3, 0x0

    :goto_2c
    iget-boolean v5, p0, Lcom/fyber/inneractive/sdk/player/controller/e;->C:Z

    if-nez v5, :cond_40

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    check-cast v5, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/config/c0;->d:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v5, 0x1

    goto :goto_41

    :cond_40
    const/4 v5, 0x0

    :goto_41
    if-nez v5, :cond_6e

    iget-boolean v5, p0, Lcom/fyber/inneractive/sdk/player/controller/e;->E:Z

    if-eqz v5, :cond_55

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    check-cast v5, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/config/c0;->j:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    sget-object v6, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->REWARDED:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-eq v5, v6, :cond_55

    const/4 v5, 0x1

    goto :goto_56

    :cond_55
    const/4 v5, 0x0

    :goto_56
    if-eqz v5, :cond_59

    goto :goto_6e

    :cond_59
    if-lez v3, :cond_71

    if-ne v4, v0, :cond_71

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "%s setting default volume. unmuting player"

    invoke-static {v3, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/player/controller/n;->i(Z)V

    goto :goto_71

    :cond_6e
    :goto_6e
    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/player/controller/n;->g(Z)V

    :cond_71
    :goto_71
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->E()V

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/e;->D:Z

    :cond_76
    :goto_76
    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/player/controller/n;->h(Z)V

    return v1
.end method

.method public o()I
    .registers 5

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->u:Lcom/fyber/inneractive/sdk/config/j;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    const-string v1, "VideoFullscreenBufferingTimeout"

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/config/i;->a(Ljava/lang/String;II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public s()I
    .registers 9

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->p()Lcom/fyber/inneractive/sdk/config/global/features/b;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/config/global/features/b;->d()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    sget-object v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->u:Lcom/fyber/inneractive/sdk/config/j;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->A:Lcom/fyber/inneractive/sdk/config/enums/Skip;

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->isCurrentUserAChild()Z

    move-result v5

    const-string v6, "vast_configuration"

    invoke-virtual {v2, v6}, Lcom/fyber/inneractive/sdk/config/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/g;

    move-result-object v2

    const-string v6, "skip_d"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_26
    iget-object v7, v2, Lcom/fyber/inneractive/sdk/config/g;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/g;->a:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3a} :catch_3b

    goto :goto_3c

    :catch_3b
    :cond_3b
    const/4 v2, -0x1

    :goto_3c
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez v4, :cond_4c

    if-eqz v3, :cond_4c

    check-cast v3, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    if-eqz v3, :cond_4c

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/config/c0;->h:Lcom/fyber/inneractive/sdk/config/enums/Skip;

    :cond_4c
    const/4 v3, 0x5

    if-eqz v5, :cond_76

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/controller/e;->d(I)Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_8c

    :cond_56
    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/controller/e;->d(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_7a

    :cond_5d
    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/config/enums/Skip;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/controller/e;->d(I)Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/config/enums/Skip;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8c

    :cond_74
    const/4 v0, 0x5

    goto :goto_8c

    :cond_76
    if-le v2, v1, :cond_7c

    if-gt v2, v3, :cond_7c

    :goto_7a
    move v0, v2

    goto :goto_8c

    :cond_7c
    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/Skip;->DEFAULT:Lcom/fyber/inneractive/sdk/config/enums/Skip;

    if-ne v4, v0, :cond_84

    const v0, 0x1869f

    goto :goto_8c

    :cond_84
    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/config/enums/Skip;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_8c
    return v0
.end method

.method public u()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->u:Z

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s onBufferingTimeout reached. Skipping to end card"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(Z)V

    return-void
.end method

.method public w()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/controller/w;->k()V

    :cond_7
    return-void
.end method

.method public y()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->C()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->n()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/e;->k()Z

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/player/controller/n;->h(Z)V

    return-void
.end method
