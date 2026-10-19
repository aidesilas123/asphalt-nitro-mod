###### Class com.facebook.ads.redexgen.X.C8W (com.facebook.ads.redexgen.X.8W)
.class public final Lcom/facebook/ads/redexgen/X/8W;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/lang/String;

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A04:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Qr1EFu0kx1tI01867m6ODqfSZ9SwtWDI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3TYgkAWbIjP9kMvunjr7VwfmqgOZ7ZQ4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kyx9q1x7DLL5BxK3faNs604Sw4dxbCMr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cJW9lkVABx2P1Kp63XktrUnlRFV2zQAL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nhxLXaLaMxGTsXNVJcvnwyCHZZV2RS3H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "y9xLyKazRl3zNBUnfIZmAOMjGK0AXhl4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DTEqb4TbXnNBCaxA5atVnYK0pSb9DMUi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fZvghiN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8W;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8W;->A08()V

    const/16 v2, 0x50

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8W;->A00:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8W;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8W;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/8W;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/7S;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/7S;)Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/facebook/ads/redexgen/X/8V;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/8V;-><init>(Lcom/facebook/ads/redexgen/X/7S;)V

    new-instance v3, Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v2, 0x0

    :goto_b
    const/4 v0, 0x3

    if-ge v2, v0, :cond_25

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/LP;->A00(Ljava/lang/Runnable;)V

    :try_start_11
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_24
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8W;->A09(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/87;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/87;->A07()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v1, Lcom/facebook/ads/redexgen/X/8W;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/8W;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2b
    sget-object v2, Lcom/facebook/ads/redexgen/X/8W;->A02:[Ljava/lang/String;

    const-string v1, "SlGltdwaGCQXXY2U2bjZ1NfeES9SOW6r"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "AnJMWH4pc3dV3Xqon1tLsffrk7nZCcYt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_59

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A1Z:I

    const/16 v2, 0x49

    const/4 v1, 0x7

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x74

    const/4 v1, 0x7

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :cond_59
    return-object p1
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/7S;Z)Ljava/lang/String;
    .registers 17

    move-object v9, p0

    if-nez v9, :cond_6

    sget-object v0, Lcom/facebook/ads/redexgen/X/8W;->A00:Ljava/lang/String;

    return-object v0

    :cond_6
    if-eqz p1, :cond_17

    const/16 v2, 0x7b

    const/16 v1, 0xa

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    sget-object v12, Lcom/facebook/ads/redexgen/X/8W;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_22

    return-object v0

    :cond_22
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/IO;->A01(Landroid/content/Context;)J

    move-result-wide p0

    const/16 v2, 0x8f

    const/16 v1, 0x17

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x85

    const/16 v1, 0xa

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const/16 v2, 0x58

    const/16 v1, 0x1c

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-lez v0, :cond_6f

    invoke-static {v11, v9}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v10}, Lcom/facebook/ads/redexgen/X/7S;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const/4 v0, 0x0

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v13

    cmp-long v0, v7, p0

    if-gez v0, :cond_6f

    invoke-virtual {v12, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v3

    :cond_6f
    const/4 v3, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt v5, v0, :cond_82

    :try_start_76
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/8W;->A01(Lcom/facebook/ads/redexgen/X/7S;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_82
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v0

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/8W;->A09(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/Throwable;)V

    :cond_82
    :goto_82
    if-nez v3, :cond_88

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/8W;->A02(Lcom/facebook/ads/redexgen/X/7S;)Ljava/lang/String;

    move-result-object v3

    :cond_88
    if-nez v3, :cond_b3

    sget-object v3, Lcom/facebook/ads/redexgen/X/8W;->A00:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/8W;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_ad

    sget-object v2, Lcom/facebook/ads/redexgen/X/8W;->A02:[Ljava/lang/String;

    const-string v1, "StKvz6zSFpxDJ9oVJdJRJeNQczVDnPLD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "N8R2WFi4AoJsdw6tflYfsN6oN8Vo9HPM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_ad
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b3
    cmp-long v0, p0, v1

    if-lez v0, :cond_e1

    invoke-static {v11, v9}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v10}, Lcom/facebook/ads/redexgen/X/7S;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8W;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_e1
    return-object v3
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/87;Lcom/facebook/ads/redexgen/X/7S;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IO;->A04(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p0}, Lcom/facebook/ads/redexgen/X/8W;->A03(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/87;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x27

    const/4 v1, 0x6

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/87;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x2d

    const/4 v1, 0x6

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/87;->A04()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x26

    const/4 v1, 0x1

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5c
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/87;Lcom/facebook/ads/redexgen/X/7S;Z)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/8W;->A04(Lcom/facebook/ads/redexgen/X/7S;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x26

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A88()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x39

    const/4 v1, 0x6

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/87;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x26

    const/4 v1, 0x1

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/8W;->A05(Lcom/facebook/ads/redexgen/X/87;Lcom/facebook/ads/redexgen/X/7S;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x44

    const/4 v1, 0x5

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A89()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x33

    const/4 v1, 0x6

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x57

    const/4 v1, 0x1

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A07()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8W;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static A08()V
    .registers 1

    const/16 v0, 0xae

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/8W;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x4ct
        0x37t
        0x2at
        0x2et
        0x2dt
        0x22t
        0x43t
        0x2dt
        0x19t
        0x8t
        0x5t
        0x9t
        0x2t
        0xft
        0x9t
        0x22t
        0x9t
        0x18t
        0x1bt
        0x3t
        0x1et
        0x7t
        0x2at
        0x3t
        0x1et
        0x2dt
        0x2t
        0x8t
        0x1et
        0x3t
        0x5t
        0x8t
        0x57t
        0x2at
        0x2et
        0x3ft
        0x22t
        0x43t
        0x47t
        0x57t
        0x2at
        0x2et
        0x2dt
        0x3at
        0x43t
        0x51t
        0x2ct
        0x28t
        0x28t
        0x3ct
        0x45t
        0x65t
        0x18t
        0x1ct
        0x12t
        0x1dt
        0x71t
        0x1et
        0x63t
        0x67t
        0x76t
        0x73t
        0xat
        0x20t
        0x24t
        0x27t
        0x24t
        0x49t
        0x10t
        0x14t
        0x0t
        0x5t
        0x79t
        0x5et
        0x47t
        0x51t
        0x40t
        0x5bt
        0x42t
        0x42t
        0x14t
        0x2ft
        0x2at
        0x2ft
        0x2et
        0x36t
        0x2ft
        0x1t
        0x18t
        0x14t
        0x16t
        0x55t
        0x1dt
        0x1at
        0x18t
        0x1et
        0x19t
        0x14t
        0x14t
        0x10t
        0x55t
        0x1at
        0x1ft
        0x8t
        0x55t
        0x12t
        0x15t
        0xft
        0x1et
        0x9t
        0x15t
        0x1at
        0x17t
        0x55t
        0xet
        0x1at
        0x35t
        0x37t
        0x3ct
        0x37t
        0x20t
        0x3bt
        0x31t
        0x31t
        0x2dt
        0x2dt
        0x29t
        0x77t
        0x38t
        0x3et
        0x3ct
        0x37t
        0x2dt
        0x26t
        0x20t
        0x36t
        0x21t
        0xct
        0x32t
        0x34t
        0x36t
        0x3dt
        0x27t
        0x3ct
        0x3at
        0x2ct
        0x3bt
        0x16t
        0x28t
        0x2et
        0x2ct
        0x27t
        0x3dt
        0x16t
        0x25t
        0x28t
        0x3at
        0x3dt
        0x16t
        0x3bt
        0x2ct
        0x2ft
        0x3bt
        0x2ct
        0x3at
        0x21t
        0x30t
        0x22t
        0x25t
        0x18t
        0x31t
        0x2et
        0x22t
        0x30t
    .end array-data
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/Throwable;)V
    .registers 7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A2f:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0xa6

    const/16 v1, 0x8

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C8V (com.facebook.ads.redexgen.X.8V)
.class public final Lcom/facebook/ads/redexgen/X/8V;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8W;->A02(Lcom/facebook/ads/redexgen/X/7S;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7S;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7S;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8V;->A00:Lcom/facebook/ads/redexgen/X/7S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8W;->A07()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8V;->A00:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/8U;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/8U;-><init>(Lcom/facebook/ads/redexgen/X/8V;)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    if-eqz v1, :cond_34

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8W;->A07()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_34
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8V;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C8U (com.facebook.ads.redexgen.X.8U)
.class public final Lcom/facebook/ads/redexgen/X/8U;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8V;->A00()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8V;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8V;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8U;->A00:Lcom/facebook/ads/redexgen/X/8V;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    sget v0, Lcom/facebook/ads/redexgen/X/7x;->A2g:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NB;->A02(I)V

    const/4 v0, 0x1

    return v0
.end method
