###### Class com.applovin.impl.adview.activity.b.a.AnonymousClass3 (com.applovin.impl.adview.activity.b.a$3)
.class Lcom/applovin/impl/adview/activity/b/a$3;
.super Lcom/applovin/impl/sdk/utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/a;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/n;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajl:Lcom/applovin/impl/adview/activity/b/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$3;->ajl:Lcom/applovin/impl/adview/activity/b/a;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/adview/activity/b/a$3;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/a$3;->sP()V

    return-void
.end method

.method private synthetic sP()V
    .registers 4

    const-string v0, "AppLovinFullscreenActivity"

    const-string v1, "Dismissing on-screen ad due to app relaunched via launcher."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/a$3;->ajl:Lcom/applovin/impl/adview/activity/b/a;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/activity/b/a;->dismiss()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_18

    :catchall_d
    move-exception v1

    const-string v2, "Failed to dismiss ad."

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_13
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a$3;->ajl:Lcom/applovin/impl/adview/activity/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->sE()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_18

    :catchall_18
    :goto_18
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/b/a$3;->ajl:Lcom/applovin/impl/adview/activity/b/a;

    invoke-static {p2}, Lcom/applovin/impl/adview/activity/b/a;->b(Lcom/applovin/impl/adview/activity/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_2a

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/u;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    new-instance p1, Lcom/applovin/impl/adview/activity/b/k;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/activity/b/k;-><init>(Lcom/applovin/impl/adview/activity/b/a$3;)V

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2a
    return-void
.end method
