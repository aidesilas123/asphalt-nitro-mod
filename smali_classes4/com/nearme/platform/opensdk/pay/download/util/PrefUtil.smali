###### Class com.nearme.platform.opensdk.pay.download.util.PrefUtil (com.nearme.platform.opensdk.pay.download.util.PrefUtil)
.class public Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;
.super Ljava/lang/Object;
.source "PrefUtil.java"


# static fields
.field public static a:Landroid/content/SharedPreferences;

.field private static b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadFileSize(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.file.size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadProgress(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.progress"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadSize(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadStatus(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.status"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "-1"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_10

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->b:Landroid/content/Context;

    if-nez v0, :cond_10

    sput-object p0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->b:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    :cond_10
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static removeDownloadFileSize(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.file.size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeDownloadProgress(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.progress"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeDownloadStatus(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.status"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDownloadFileSize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.file.size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDownloadProgress(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.progress"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDownloadSize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".download.status"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
