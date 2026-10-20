###### Class com.tapjoy.internal.i8 (com.tapjoy.internal.i8)
.class public final Lcom/tapjoy/internal/i8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/util/Map;

.field public static c:Z

.field public static d:Ljava/util/Map;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Lcom/tapjoy/j0;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/i8;->e:Ljava/lang/String;

    new-instance v0, Lcom/tapjoy/j0;

    invoke-direct {v0}, Lcom/tapjoy/j0;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/i8;->f:Lcom/tapjoy/j0;

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3

    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :cond_c
    sput-object v0, Lcom/tapjoy/internal/i8;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/internal/i8;->c:Z

    sput-object p0, Lcom/tapjoy/internal/i8;->b:Ljava/util/Map;

    sput-object p1, Lcom/tapjoy/internal/i8;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6

    sget-object v0, Lcom/tapjoy/internal/i8;->d:Ljava/util/Map;

    if-eqz v0, :cond_25

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/tapjoy/internal/i8;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/tapjoy/internal/i8;->e:Ljava/lang/String;

    const-string v2, "sdk_beacon_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1d

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1d
    new-instance p2, Lcom/tapjoy/internal/z1;

    invoke-direct {p2, p0, p1, v0}, Lcom/tapjoy/internal/z1;-><init>(Lcom/tapjoy/internal/i8;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_25
    return-void
.end method
