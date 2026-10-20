###### Class com.bytedance.sdk.openadsdk.utils.r (com.bytedance.sdk.openadsdk.utils.r)
.class public Lcom/bytedance/sdk/openadsdk/utils/r;
.super Ljava/lang/Object;
.source "PangleUUID.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/r;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 10

    const/16 v0, 0x10

    new-array v1, v0, [B

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/r;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/SecureRandom;

    if-nez v3, :cond_16

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x6

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_3c
    if-ge v3, v2, :cond_48

    shl-long/2addr v6, v2

    aget-byte v8, v1, v3

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_48
    const/16 v3, 0x8

    :goto_4a
    if-ge v3, v0, :cond_56

    shl-long/2addr v4, v2

    aget-byte v8, v1, v3

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_56
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v6, v7, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
