###### Class com.nearme.plugin.framework.PluginFrameworkVersionSpUtils (com.nearme.plugin.framework.PluginFrameworkVersionSpUtils)
.class public Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;
.super Ljava/lang/Object;
.source "PluginFrameworkVersionSpUtils.java"


# static fields
.field private static a:Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "plugin_framework"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;
    .registers 3

    sget-object v0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->a:Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->a:Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    invoke-direct {v1, p0}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->a:Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->a:Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cur_version_of_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 v1, -0x80000000

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update_version_of_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 v1, -0x80000000

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;I)Z
    .registers 6

    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cur_version_of_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;I)Z
    .registers 6

    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update_version_of_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
