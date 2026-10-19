###### Class com.fyber.inneractive.sdk.protobuf.d (com.fyber.inneractive.sdk.protobuf.d)
.class public final Lcom/fyber/inneractive/sdk/protobuf/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "libcore.io.Memory"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-object v0, v1

    :goto_9
    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/d;->a:Ljava/lang/Class;

    const-string v0, "org.robolectric.Robolectric"

    :try_start_d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_12

    goto :goto_13

    :catchall_12
    nop

    :goto_13
    if-eqz v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    sput-boolean v0, Lcom/fyber/inneractive/sdk/protobuf/d;->b:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/d;->a:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/fyber/inneractive/sdk/protobuf/d;->b:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
