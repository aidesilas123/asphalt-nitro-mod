###### Class com.applovin.impl.adview.activity.b (com.applovin.impl.adview.activity.b)
.class public Lcom/applovin/impl/adview/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ahM:Landroid/app/Activity;

.field private final aiH:I

.field private final aiI:I

.field private final aiJ:Z

.field private final aiK:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b;->ahM:Landroid/app/Activity;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/u;->ag(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/activity/b;->aiI:I

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/applovin/impl/adview/activity/b;->aiJ:Z

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b;->p(IZ)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/activity/b;->aiH:I

    if-eqz v1, :cond_22

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/applovin/impl/adview/activity/b;->v(Landroid/content/Context;)I

    move-result p1

    if-ne v0, p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iput-boolean p1, p0, Lcom/applovin/impl/adview/activity/b;->aiK:Z

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/e$b;)V
    .registers 7

    sget-object v0, Lcom/applovin/impl/sdk/ad/e$b;->aGK:Lcom/applovin/impl/sdk/ad/e$b;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v0, :cond_38

    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b;->aiJ:Z

    const/16 v0, 0x9

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b;->aiK:Z

    if-eqz p1, :cond_25

    iget p1, p0, Lcom/applovin/impl/adview/activity/b;->aiI:I

    if-eq p1, v3, :cond_1b

    if-eq p1, v1, :cond_1b

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/activity/b;->gd(I)V

    goto :goto_69

    :cond_1b
    if-ne p1, v3, :cond_21

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b;->gd(I)V

    goto :goto_69

    :cond_21
    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/activity/b;->gd(I)V

    goto :goto_69

    :cond_25
    iget p1, p0, Lcom/applovin/impl/adview/activity/b;->aiI:I

    if-eqz p1, :cond_2f

    if-eq p1, v2, :cond_2f

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/activity/b;->gd(I)V

    goto :goto_69

    :cond_2f
    if-nez p1, :cond_32

    goto :goto_34

    :cond_32
    const/16 v3, 0x9

    :goto_34
    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/activity/b;->gd(I)V

    goto :goto_69

    :cond_38
    sget-object v0, Lcom/applovin/impl/sdk/ad/e$b;->aGL:Lcom/applovin/impl/sdk/ad/e$b;

    if-ne p1, v0, :cond_69

    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b;->aiJ:Z

    const/16 v0, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_59

    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b;->aiK:Z

    if-eqz p1, :cond_59

    iget p1, p0, Lcom/applovin/impl/adview/activity/b;->aiI:I

    if-eqz p1, :cond_51

    if-eq p1, v2, :cond_51

    invoke-direct {p0, v4}, Lcom/applovin/impl/adview/activity/b;->gd(I)V

    goto :goto_69

    :cond_51
    if-ne p1, v2, :cond_54

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b;->gd(I)V

    goto :goto_69

    :cond_59
    iget p1, p0, Lcom/applovin/impl/adview/activity/b;->aiI:I

    if-eq p1, v3, :cond_63

    if-eq p1, v1, :cond_63

    invoke-direct {p0, v4}, Lcom/applovin/impl/adview/activity/b;->gd(I)V

    goto :goto_69

    :cond_63
    if-ne p1, v3, :cond_66

    const/4 v0, 0x0

    :cond_66
    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b;->gd(I)V

    :cond_69
    :goto_69
    return-void
.end method

.method private gd(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b;->ahM:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method private p(IZ)I
    .registers 9

    const/16 v0, 0x8

    const/16 v1, 0x9

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p2, :cond_1a

    iget-boolean p2, p0, Lcom/applovin/impl/adview/activity/b;->aiK:Z

    if-eqz p2, :cond_1a

    if-nez p1, :cond_11

    return v3

    :cond_11
    if-ne p1, v5, :cond_14

    return v1

    :cond_14
    if-ne p1, v4, :cond_17

    return v0

    :cond_17
    if-ne p1, v2, :cond_26

    return v5

    :cond_1a
    if-nez p1, :cond_1d

    return v5

    :cond_1d
    if-ne p1, v5, :cond_20

    return v3

    :cond_20
    if-ne p1, v4, :cond_23

    return v1

    :cond_23
    if-ne p1, v2, :cond_26

    return v0

    :cond_26
    const/4 p1, -0x1

    return p1
.end method

.method private static v(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v1, 0x2

    if-eqz p0, :cond_1d

    if-ne p0, v1, :cond_21

    :cond_1d
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v1, :cond_2d

    :cond_21
    const/4 v2, 0x1

    if-eq p0, v2, :cond_27

    const/4 v3, 0x3

    if-ne p0, v3, :cond_2c

    :cond_27
    iget p0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    return v2

    :cond_2d
    :goto_2d
    return v1
.end method


# virtual methods
.method public c(Lcom/applovin/impl/sdk/ad/e;)V
    .registers 4

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->Gr()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/applovin/impl/adview/activity/b;->aiH:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b;->gd(I)V

    goto :goto_16

    :cond_f
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->Gb()Lcom/applovin/impl/sdk/ad/e$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b;->a(Lcom/applovin/impl/sdk/ad/e$b;)V

    :goto_16
    return-void
.end method
