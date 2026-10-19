###### Class com.nearme.platform.opensdk.pay.PayTask (com.nearme.platform.opensdk.pay.PayTask)
.class public Lcom/nearme/platform/opensdk/pay/PayTask;
.super Ljava/lang/Object;
.source "PayTask.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static isSupportAliQRCode(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportAliQRScan(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportAliRenew(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/Utils;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa0

    if-lt v0, v1, :cond_12

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/nearme/platform/opensdk/pay/Utils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportWechatQRCode(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/Utils;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa1

    if-lt v0, v1, :cond_12

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/Utils;->getMMApiLevel(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportWechatQRScan(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportWechatRenew(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/Utils;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa1

    if-lt v0, v1, :cond_12

    const-string v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/nearme/platform/opensdk/pay/Utils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static openAliQRCode(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static openAliQRScan(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static openWechatQRCode(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nearme.pay.qrcode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_channel"

    const-string v2, "wxpay"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_pkg_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_20

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_20
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openWechatQRScan(Landroid/content/Context;)V
    .registers 1

    return-void
.end method
