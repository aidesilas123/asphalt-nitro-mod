###### Class com.tapjoy.TapjoyAppSettings (com.tapjoy.TapjoyAppSettings)
.class public Lcom/tapjoy/TapjoyAppSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "TapjoyAppSettings"

.field public static b:Lcom/tapjoy/TapjoyAppSettings;


# instance fields
.field public final c:Landroid/content/SharedPreferences;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tjcPrefrences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyAppSettings;->a()V

    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyAppSettings;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->b:Lcom/tapjoy/TapjoyAppSettings;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    const-string v1, "initializing app settings"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tapjoy/TapjoyAppSettings;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyAppSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyAppSettings;->b:Lcom/tapjoy/TapjoyAppSettings;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/SharedPreferences;

    const-string v1, "tapjoyLogLevel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restoreLoggingLevel from sharedPref -- loggingLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    :cond_2c
    return-void
.end method

.method public b(Ljava/lang/String;J)Ljava/lang/String;
    .registers 11

    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/SharedPreferences;

    const-string v1, "connectResult"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v2

    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/SharedPreferences;

    const-string v3, "connectParamsHash"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/SharedPreferences;

    const-wide/16 v3, -0x1

    const-string v1, "connectResultExpires"

    invoke-interface {p1, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_38

    cmp-long p1, v3, p2

    if-ltz p1, :cond_39

    :cond_38
    return-object v0

    :cond_39
    return-object v2
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/SharedPreferences;

    const-string v1, "connectParamsHash"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "connectResult"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "connectResultExpires"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    const-string v2, "Removed connect result"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_28
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_36

    :cond_d
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "connectResult"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "connectParamsHash"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-wide/16 p1, 0x0

    const-string v1, "connectResultExpires"

    cmp-long v2, p3, p1

    if-ltz v2, :cond_29

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2c

    :cond_29
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_2c
    sget-object p1, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    const-string p2, "Stored connect result"

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_36
    :goto_36
    return-void
.end method
