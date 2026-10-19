###### Class com.fyber.inneractive.sdk.protobuf.q (com.fyber.inneractive.sdk.protobuf.q)
.class public Lcom/fyber/inneractive/sdk/protobuf/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/protobuf/q$a;
    }
.end annotation


# static fields
.field public static volatile b:Lcom/fyber/inneractive/sdk/protobuf/q;

.field public static final c:Lcom/fyber/inneractive/sdk/protobuf/q;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/fyber/inneractive/sdk/protobuf/q$a;",
            "Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$e<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/q;-><init>(Z)V

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/q;->c:Lcom/fyber/inneractive/sdk/protobuf/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/q;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/q;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/fyber/inneractive/sdk/protobuf/q;
    .registers 6

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/q;->b:Lcom/fyber/inneractive/sdk/protobuf/q;

    if-nez v0, :cond_32

    const-class v1, Lcom/fyber/inneractive/sdk/protobuf/q;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/q;->b:Lcom/fyber/inneractive/sdk/protobuf/q;

    if-nez v0, :cond_2d

    const-string v0, "getEmptyRegistry"

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/p;->a:Ljava/lang/Class;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_2f

    const/4 v3, 0x0

    if-nez v2, :cond_13

    goto :goto_25

    :cond_13
    const/4 v4, 0x0

    :try_start_14
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/q;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_24
    .catchall {:try_start_14 .. :try_end_22} :catchall_2f

    move-object v3, v0

    goto :goto_25

    :catch_24
    nop

    :goto_25
    if-eqz v3, :cond_28

    goto :goto_2a

    :cond_28
    :try_start_28
    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/q;->c:Lcom/fyber/inneractive/sdk/protobuf/q;

    :goto_2a
    sput-object v3, Lcom/fyber/inneractive/sdk/protobuf/q;->b:Lcom/fyber/inneractive/sdk/protobuf/q;

    move-object v0, v3

    :cond_2d
    monitor-exit v1

    goto :goto_32

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :goto_32
    return-object v0
.end method
