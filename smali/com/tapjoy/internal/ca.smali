###### Class com.tapjoy.internal.ca (com.tapjoy.internal.ca)
.class public final Lcom/tapjoy/internal/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/ca;


# instance fields
.field public final b:Lcom/tapjoy/internal/t6;

.field public c:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/ca;

    invoke-direct {v0}, Lcom/tapjoy/internal/ca;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ca;->a:Lcom/tapjoy/internal/ca;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/t6;

    invoke-direct {v0}, Lcom/tapjoy/internal/t6;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ca;->b:Lcom/tapjoy/internal/t6;

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/t6;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/ca;->a:Lcom/tapjoy/internal/ca;

    iget-object v0, v0, Lcom/tapjoy/internal/ca;->b:Lcom/tapjoy/internal/t6;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_63

    :try_start_3
    iget-object v0, p0, Lcom/tapjoy/internal/ca;->c:Landroid/content/Context;

    if-nez v0, :cond_63

    iput-object p1, p0, Lcom/tapjoy/internal/ca;->c:Landroid/content/Context;

    const-string v0, "tjcPrefrences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/tapjoy/internal/ca;->c:Landroid/content/Context;

    const-string v2, "tjcPrefrences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "configurations"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_60

    if-eqz v0, :cond_63

    :try_start_21
    invoke-static {v0}, Lcom/tapjoy/internal/b4;->a(Ljava/lang/String;)Lcom/tapjoy/internal/k0;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_52
    .catchall {:try_start_21 .. :try_end_25} :catchall_60

    :try_start_25
    invoke-virtual {v0}, Lcom/tapjoy/internal/b4;->m()Ljava/util/LinkedHashMap;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_4d

    :try_start_29
    invoke-virtual {v0}, Lcom/tapjoy/internal/k0;->close()V

    iget-object v0, p0, Lcom/tapjoy/internal/ca;->b:Lcom/tapjoy/internal/t6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "final"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v3, v0, Lcom/tapjoy/internal/t6;->c:Lcom/tapjoy/internal/q3;

    iput-object v2, v3, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/tapjoy/internal/t6;->f:Lcom/tapjoy/internal/q3;

    iput-object v1, v2, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tapjoy/internal/c4;->setChanged()V

    goto :goto_63

    :catchall_4d
    move-exception v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/k0;->close()V

    throw v1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_52} :catch_52
    .catchall {:try_start_29 .. :try_end_52} :catchall_60

    :catch_52
    :try_start_52
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "configurations"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_60

    goto :goto_63

    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_63
    :goto_63
    monitor-exit p0

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 10

    instance-of v0, p1, Ljava/util/Map;

    const-string v1, "configurations"

    const/4 v2, 0x0

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    if-eqz v0, :cond_64

    :try_start_a
    iget-object v0, p0, Lcom/tapjoy/internal/ca;->b:Lcom/tapjoy/internal/t6;

    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_25

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "final"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "default"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    goto :goto_27

    :cond_25
    move-object v5, v4

    move-object v6, v5

    :goto_27
    iget-object v7, v0, Lcom/tapjoy/internal/t6;->c:Lcom/tapjoy/internal/q3;

    iput-object v6, v7, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    iget-object v6, v0, Lcom/tapjoy/internal/t6;->f:Lcom/tapjoy/internal/q3;

    iput-object v5, v6, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tapjoy/internal/c4;->setChanged()V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v5, Lcom/tapjoy/internal/h1;

    invoke-direct {v5, v0}, Lcom/tapjoy/internal/h1;-><init>(Ljava/io/StringWriter;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3c} :catch_84

    :try_start_3c
    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/h1;->a(Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_84

    :try_start_3f
    iget-object p1, v5, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_48} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_84

    :try_start_48
    iget-object v0, p0, Lcom/tapjoy/internal/ca;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_84

    :catch_5a
    move-exception p1

    invoke-static {p1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v4

    :catch_5f
    move-exception p1

    invoke-static {p1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v4
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_64} :catch_84

    :cond_64
    if-nez p1, :cond_84

    iget-object p1, p0, Lcom/tapjoy/internal/ca;->b:Lcom/tapjoy/internal/t6;

    iget-object v0, p1, Lcom/tapjoy/internal/t6;->c:Lcom/tapjoy/internal/q3;

    iput-object v4, v0, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    iget-object v0, p1, Lcom/tapjoy/internal/t6;->f:Lcom/tapjoy/internal/q3;

    iput-object v4, v0, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tapjoy/internal/c4;->setChanged()V

    iget-object p1, p0, Lcom/tapjoy/internal/ca;->c:Landroid/content/Context;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :catch_84
    :cond_84
    :goto_84
    return-void
.end method
