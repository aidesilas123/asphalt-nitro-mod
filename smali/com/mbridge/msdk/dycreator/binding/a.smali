###### Class com.mbridge.msdk.dycreator.binding.a (com.mbridge.msdk.dycreator.binding.a)
.class public final Lcom/mbridge/msdk/dycreator/binding/a;
.super Ljava/lang/Object;
.source "BindViewClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/mbridge/msdk/dycreator/f/a/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/dycreator/f/a/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    if-eqz p1, :cond_10b

    instance-of v0, p1, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    if-eqz v0, :cond_10b

    instance-of v0, p1, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/f/a/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isCanSkip()Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    if-eqz v0, :cond_54

    instance-of v1, p1, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;

    if-eqz v1, :cond_54

    invoke-static {p1, v0}, Lcom/mbridge/msdk/dycreator/e/d;->a(Landroid/view/View;Lcom/mbridge/msdk/dycreator/f/a/a;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    instance-of v1, v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    if-eqz v1, :cond_54

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    move-object v1, p1

    check-cast v1, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;->getxInScreen()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setxInScreen(F)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;->getyInScreen()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setyInScreen(F)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setClickType(I)V

    :cond_54
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    if-eqz v0, :cond_87

    instance-of v1, p1, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;

    if-eqz v1, :cond_87

    invoke-static {p1, v0}, Lcom/mbridge/msdk/dycreator/e/d;->a(Landroid/view/View;Lcom/mbridge/msdk/dycreator/f/a/a;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    instance-of v1, v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    if-eqz v1, :cond_87

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    move-object v1, p1

    check-cast v1, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;->getxInScreen()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setxInScreen(F)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;->getyInScreen()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setyInScreen(F)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setClickType(I)V

    :cond_87
    move-object v0, p1

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->getStrategyDes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10b

    invoke-static {}, Lcom/mbridge/msdk/dycreator/binding/c;->a()Lcom/mbridge/msdk/dycreator/binding/c;

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_104

    const-string v2, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/a/c;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/a/c;-><init>()V

    goto :goto_d0

    :cond_ac
    const-string v2, "download"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/a/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/a/b;-><init>()V

    goto :goto_d0

    :cond_ba
    const-string v2, "deeplink"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    goto :goto_d0

    :cond_c3
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/a/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/a/a;-><init>()V

    :cond_d0
    :goto_d0
    const-string v2, "feedback"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/a/d;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/a/d;-><init>()V

    :cond_dd
    const-string v2, "notice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/a/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/a/e;-><init>()V

    :cond_ea
    const-string v2, "permissionInfo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/a/f;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/a/f;-><init>()V

    :cond_f7
    const-string v2, "privateAddress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/a/g;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/a/g;-><init>()V

    :cond_104
    if-eqz v1, :cond_10b

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/f/a/a;

    invoke-interface {v1, p1, v0}, Lcom/mbridge/msdk/dycreator/binding/base/BaseStrategy;->bindClickData(Landroid/view/View;Lcom/mbridge/msdk/dycreator/f/a/a;)V

    :cond_10b
    return-void
.end method
