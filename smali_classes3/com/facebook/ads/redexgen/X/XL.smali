###### Class com.facebook.ads.redexgen.X.XL (com.facebook.ads.redexgen.X.XL)
.class public final Lcom/facebook/ads/redexgen/X/XL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AW;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/XM;,
        Lcom/facebook/ads/redexgen/X/Ah;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/audio/DefaultAudioSink$StartMediaTimeState;,
        Lcom/facebook/ads/redexgen/X/XN;,
        Lcom/facebook/ads/redexgen/X/Af;,
        Lcom/facebook/ads/redexgen/X/Ag;
    }
.end annotation


# static fields
.field public static A0p:Z

.field public static A0q:Z

.field public static A0r:[B

.field public static A0s:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:J

.field public A0F:J

.field public A0G:J

.field public A0H:J

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:Landroid/media/AudioTrack;

.field public A0N:Landroid/media/AudioTrack;

.field public A0O:Lcom/facebook/ads/redexgen/X/9f;

.field public A0P:Lcom/facebook/ads/redexgen/X/9f;

.field public A0Q:Lcom/facebook/ads/redexgen/X/AB;

.field public A0R:Lcom/facebook/ads/redexgen/X/AU;

.field public A0S:Ljava/nio/ByteBuffer;

.field public A0T:Ljava/nio/ByteBuffer;

.field public A0U:Ljava/nio/ByteBuffer;

.field public A0V:Z

.field public A0W:Z

.field public A0X:Z

.field public A0Y:Z

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:[B

.field public A0d:[Lcom/facebook/ads/redexgen/X/AJ;

.field public A0e:[Ljava/nio/ByteBuffer;

.field public final A0f:Landroid/os/ConditionVariable;

.field public final A0g:Lcom/facebook/ads/redexgen/X/AC;

.field public final A0h:Lcom/facebook/ads/redexgen/X/Ac;

.field public final A0i:Lcom/facebook/ads/redexgen/X/XO;

.field public final A0j:Lcom/facebook/ads/redexgen/X/Af;

.field public final A0k:Lcom/facebook/ads/redexgen/X/XF;

.field public final A0l:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/Ah;",
            ">;"
        }
    .end annotation
.end field

.field public final A0m:Z

.field public final A0n:[Lcom/facebook/ads/redexgen/X/AJ;

.field public final A0o:[Lcom/facebook/ads/redexgen/X/AJ;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hUCCDXcY4t01difYD4QJmSlSRe7RVS9F"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yHOnf8lHgEM0FI0EKX1KbB3TaozNa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kXByBOPR65DToxooqsu0gGt9HKAYl4Vo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NIkyagP1AzDGImvyfrRhWneTEqqmK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aXPRHAu0VDe5efXXlwPVbrYy41"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xYrm6yKJij65q9D2CisZETvgfz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Fi2DTXQipqprJDEroL63LN5SWS4FAMqA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8o6UBOAn3xAy4ZEKn0SjK2UR42QgxF0P"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XL;->A0O()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/XL;->A0p:Z

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/XL;->A0q:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AC;Lcom/facebook/ads/redexgen/X/Af;Z)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0g:Lcom/facebook/ads/redexgen/X/AC;

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Af;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0j:Lcom/facebook/ads/redexgen/X/Af;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0m:Z

    const/4 v6, 0x1

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v6}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0f:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/XM;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/XM;-><init>(Lcom/facebook/ads/redexgen/X/XL;Lcom/facebook/ads/redexgen/X/Ad;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ac;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ac;-><init>(Lcom/facebook/ads/redexgen/X/Aa;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    new-instance v5, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/XO;-><init>()V

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/XL;->A0i:Lcom/facebook/ads/redexgen/X/XO;

    new-instance v4, Lcom/facebook/ads/redexgen/X/XF;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/XF;-><init>()V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A0k:Lcom/facebook/ads/redexgen/X/XF;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/AJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XI;-><init>()V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    aput-object v5, v1, v6

    const/4 v0, 0x2

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/Af;->A5z()[Lcom/facebook/ads/redexgen/X/AJ;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/AJ;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/AJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0o:[Lcom/facebook/ads/redexgen/X/AJ;

    new-array v1, v6, [Lcom/facebook/ads/redexgen/X/AJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XK;-><init>()V

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0n:[Lcom/facebook/ads/redexgen/X/AJ;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A00:F

    iput v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/AB;->A04:Lcom/facebook/ads/redexgen/X/AB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0Q:Lcom/facebook/ads/redexgen/X/AB;

    iput v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/9f;->A04:Lcom/facebook/ads/redexgen/X/9f;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A04:I

    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/AJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0d:[Lcom/facebook/ads/redexgen/X/AJ;

    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0e:[Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AC;[Lcom/facebook/ads/redexgen/X/AJ;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/XL;-><init>(Lcom/facebook/ads/redexgen/X/AC;[Lcom/facebook/ads/redexgen/X/AJ;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AC;[Lcom/facebook/ads/redexgen/X/AJ;Z)V
    .registers 5

    new-instance v0, Lcom/facebook/ads/redexgen/X/XN;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/XN;-><init>([Lcom/facebook/ads/redexgen/X/AJ;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/XL;-><init>(Lcom/facebook/ads/redexgen/X/AC;Lcom/facebook/ads/redexgen/X/Af;Z)V

    return-void
.end method

.method public static A00(ILjava/nio/ByteBuffer;)I
    .registers 6

    const/4 v0, 0x7

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-ne p0, v0, :cond_c

    :cond_7
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Aj;->A00(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    :cond_c
    const/4 v0, 0x5

    if-ne p0, v0, :cond_14

    invoke-static {}, Lcom/facebook/ads/redexgen/X/A8;->A00()I

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x6

    if-ne p0, v0, :cond_41

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/A8;->A03(Ljava/nio/ByteBuffer;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_34

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_34
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "kQJQgIYBfsXVI0BXiDfXFh8Y0v"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "xmKGBElaJ1P1UFLQWjzE2KvoVx"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_41
    const/16 v0, 0xe

    if-ne p0, v0, :cond_55

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/A8;->A02(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_4e

    const/4 v0, 0x0

    :goto_4d
    return v0

    :cond_4e
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/A8;->A04(Ljava/nio/ByteBuffer;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_4d

    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x1b

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private A02(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .registers 11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0S:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_19

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0S:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0S:Ljava/nio/ByteBuffer;

    const v0, 0x55550001

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_19
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A03:I

    const/4 v2, 0x0

    if-nez v0, :cond_35

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0S:Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-virtual {v1, v0, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A0S:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p4

    const/16 v3, 0x8

    invoke-virtual {v4, v3, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0S:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/XL;->A03:I

    :cond_35
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0S:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v3, v0

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_53

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_53
    sget-object v3, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "ZxHEhXNaRaOeicOuVS0y7eKtBmJV15x7"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const-string v1, "lpmrRXkhPpBf5A8LovnLhyOg75mNhzFm"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    if-lez v4, :cond_70

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0S:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_6d

    iput v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A03:I

    return v0

    :cond_6d
    if-ge v0, v4, :cond_70

    return v2

    :cond_70
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/XL;->A01(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v3

    if-gez v3, :cond_9e

    iput v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_91

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_91
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "98oBXXwj84JUUigMvdtlS6TYqH9EDAiG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "VyAxkX5UR8Pe4wLdxiezRSIVcQQDizsa"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_9e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A03:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A03:I

    return v3
.end method

.method private A03()J
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    if-eqz v0, :cond_b

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0J:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0B:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    :goto_a
    return-wide v2

    :cond_b
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0I:J

    goto :goto_a
.end method

.method private A04()J
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    if-eqz v0, :cond_b

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0L:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A09:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    :goto_a
    return-wide v2

    :cond_b
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0K:J

    goto :goto_a
.end method

.method private A05(J)J
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0j:Lcom/facebook/ads/redexgen/X/Af;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Af;->A7s()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/XL;->A08(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private A06(J)J
    .registers 8

    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A00(Lcom/facebook/ads/redexgen/X/Ah;)J

    move-result-wide v1

    cmp-long v0, p1, v1

    if-ltz v0, :cond_46

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_37

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_37
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "EqLX22Mle1kVg1sX5ZT6YkRLc5f35"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "gdY2b1urbXezKivfsFNrjnMWNzK4t"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ah;

    goto :goto_1

    :cond_46
    if-eqz v3, :cond_5d

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ah;->A02(Lcom/facebook/ads/redexgen/X/Ah;)Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ah;->A00(Lcom/facebook/ads/redexgen/X/Ah;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0G:J

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ah;->A01(Lcom/facebook/ads/redexgen/X/Ah;)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0H:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0F:J

    :cond_5d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_6e

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0F:J

    add-long/2addr v2, p1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0G:J

    sub-long/2addr v2, v0

    return-wide v2

    :cond_6e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0F:J

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0j:Lcom/facebook/ads/redexgen/X/Af;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0G:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/Af;->A7H(J)J

    move-result-wide v0

    add-long/2addr v3, v0

    return-wide v3

    :cond_83
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0F:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0G:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0C(JF)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private A07(J)J
    .registers 7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0A:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private A08(J)J
    .registers 7

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0A:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private A09(J)J
    .registers 7

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A06:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/XL;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0E:J

    return-wide v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/XL;)J
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A03()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/XL;)J
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A04()J

    move-result-wide v0

    return-wide v0
.end method

.method private A0D()Landroid/media/AudioTrack;
    .registers 8

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0b:Z

    if-eqz v0, :cond_47

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    :goto_1d
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A07:I

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A08:I

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0A:I

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    iget v6, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    if-eqz v6, :cond_45

    :goto_3c
    new-instance v1, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A02:I

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v1

    :cond_45
    const/4 v6, 0x0

    goto :goto_3c

    :cond_47
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0Q:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AB;->A00()Landroid/media/AudioAttributes;

    move-result-object v2

    goto :goto_1d
.end method

.method private A0E()Landroid/media/AudioTrack;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AT;
        }
    .end annotation

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_12

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0D()Landroid/media/AudioTrack;

    move-result-object v1

    :goto_a
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    const/4 v0, 0x1

    if-ne v4, v0, :cond_3e

    return-object v1

    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0Q:Lcom/facebook/ads/redexgen/X/AB;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AB;->A03:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(I)I

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    if-nez v0, :cond_2d

    new-instance v1, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0A:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A07:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/XL;->A08:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/XL;->A02:I

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_a

    :cond_2d
    new-instance v1, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0A:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A07:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/XL;->A08:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/XL;->A02:I

    const/4 v7, 0x1

    iget v8, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    goto :goto_a

    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_41

    :catch_41
    iget v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0A:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A07:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A02:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/AT;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AT;-><init>(IIII)V

    throw v0
.end method

.method private A0F(I)Landroid/media/AudioTrack;
    .registers 10

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/XL;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0f:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/XL;)Lcom/facebook/ads/redexgen/X/AU;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0R:Lcom/facebook/ads/redexgen/X/AU;

    return-object p0
.end method

.method public static A0I(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/XL;->A0r:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0J()V
    .registers 4

    const/4 v2, 0x0

    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0d:[Lcom/facebook/ads/redexgen/X/AJ;

    array-length v0, v1

    if-ge v2, v0, :cond_16

    aget-object v0, v1, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AJ;->flush()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0e:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AJ;->A7O()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method private A0K()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AT;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0E()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/XL;->A0p:Z

    if-eqz v0, :cond_30

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_30

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0N:Landroid/media/AudioTrack;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v2, v0, :cond_26

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0L()V

    :cond_26
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0N:Landroid/media/AudioTrack;

    if-nez v0, :cond_30

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/XL;->A0F(I)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0N:Landroid/media/AudioTrack;

    :cond_30
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    if-eq v0, v2, :cond_3d

    iput v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0R:Lcom/facebook/ads/redexgen/X/AU;

    if-eqz v0, :cond_3d

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/AU;->AAd(I)V

    :cond_3d
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0V:Z

    if-eqz v0, :cond_5f

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0j:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A3X(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v0

    :goto_49
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0N()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A08:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A09:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A02:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ac;->A0G(Landroid/media/AudioTrack;III)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0M()V

    return-void

    :cond_5f
    sget-object v0, Lcom/facebook/ads/redexgen/X/9f;->A04:Lcom/facebook/ads/redexgen/X/9f;

    goto :goto_49
.end method

.method private A0L()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0N:Landroid/media/AudioTrack;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0N:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0N:Landroid/media/AudioTrack;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ae;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Ae;-><init>(Lcom/facebook/ads/redexgen/X/XL;Landroid/media/AudioTrack;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ae;->start()V

    return-void
.end method

.method private A0M()V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_15

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A00:F

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A0Q(Landroid/media/AudioTrack;F)V

    goto :goto_6

    :cond_15
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2f
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "RUPACOvpiKp7bcWaTWyqVFSR7GtEantX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "RzQzoOWLdvYkkdkBCtRhC7yU7hWBsadG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A00:F

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/XL;->A0R(Landroid/media/AudioTrack;F)V

    goto :goto_6
.end method

.method private A0N()V
    .registers 7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0V()[Lcom/facebook/ads/redexgen/X/AJ;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_1f

    aget-object v1, v4, v2

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/AJ;->A8l()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/AJ;->flush()V

    goto :goto_18

    :cond_1f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/AJ;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/AJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0d:[Lcom/facebook/ads/redexgen/X/AJ;

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0e:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0J()V

    return-void
.end method

.method public static A0O()V
    .registers 1

    const/16 v0, 0x95

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/XL;->A0r:[B

    return-void

    :array_a
    .array-data 1
        0x21t
        0x2dt
        0x6at
        0x62t
        0x79t
        0x2dt
        0x52t
        0x66t
        0x77t
        0x7at
        0x7ct
        0x47t
        0x61t
        0x72t
        0x70t
        0x78t
        0x2ft
        0x2t
        0x18t
        0x8t
        0x4t
        0x5t
        0x1ft
        0x2t
        0x5t
        0x1et
        0x2t
        0x1ft
        0x12t
        0x4bt
        0xft
        0xet
        0x1ft
        0xet
        0x8t
        0x1ft
        0xet
        0xft
        0x4bt
        0x30t
        0xet
        0x13t
        0x1bt
        0xet
        0x8t
        0x1ft
        0xet
        0xft
        0x4bt
        0x21t
        0x39t
        0x26t
        0x2bt
        0x26t
        0x2et
        0x4et
        0x79t
        0x6ft
        0x79t
        0x68t
        0x68t
        0x75t
        0x72t
        0x7bt
        0x3ct
        0x6ft
        0x68t
        0x7dt
        0x70t
        0x70t
        0x79t
        0x78t
        0x3ct
        0x7dt
        0x69t
        0x78t
        0x75t
        0x73t
        0x3ct
        0x68t
        0x6et
        0x7dt
        0x7ft
        0x77t
        0x2et
        0x15t
        0x1et
        0x3t
        0xbt
        0x1et
        0x18t
        0xft
        0x1et
        0x1ft
        0x5bt
        0x1at
        0xet
        0x1ft
        0x12t
        0x14t
        0x5bt
        0x1et
        0x15t
        0x18t
        0x14t
        0x1ft
        0x12t
        0x15t
        0x1ct
        0x41t
        0x5bt
        0x3at
        0x1t
        0x1ct
        0x1at
        0x1ft
        0x1ft
        0x0t
        0x1dt
        0x1bt
        0xat
        0xbt
        0x4ft
        0xct
        0x7t
        0xet
        0x1t
        0x1t
        0xat
        0x3t
        0x4ft
        0xct
        0x0t
        0x1at
        0x1t
        0x1bt
        0x55t
        0x4ft
        0x18t
        0x79t
        0x70t
        0x6ct
        0x6bt
        0x7at
        0x6dt
        0x29t
        0x3at
        0x28t
        0x3at
    .end array-data
.end method

.method private A0P(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AV;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0d:[Lcom/facebook/ads/redexgen/X/AJ;

    array-length v4, v0

    move v3, v4

    :goto_4
    if-ltz v3, :cond_61

    if-lez v3, :cond_59

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0e:[Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, -0x1

    aget-object v2, v1, v0

    :goto_e
    if-ne v3, v4, :cond_41

    invoke-direct {p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/XL;->A0S(Ljava/nio/ByteBuffer;J)V

    :cond_13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2f
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "GvJ2yOfBgit1iG3ukbpo3ztMvZtxyKui"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "YNNwMOgGE9szKpvyLkHk1WmQlE5xjnt7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v5, :cond_3e

    return-void

    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_41
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0d:[Lcom/facebook/ads/redexgen/X/AJ;

    aget-object v0, v0, v3

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/AJ;->AE7(Ljava/nio/ByteBuffer;)V

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AJ;->A7O()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0e:[Ljava/nio/ByteBuffer;

    aput-object v1, v0, v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0T:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_5e

    goto :goto_e

    :cond_5e
    sget-object v2, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    goto :goto_e

    :cond_61
    return-void
.end method

.method public static A0Q(Landroid/media/AudioTrack;F)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method public static A0R(Landroid/media/AudioTrack;F)V
    .registers 2

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private A0S(Ljava/nio/ByteBuffer;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AV;
        }
    .end annotation

    move-object v7, p1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/XL;->A0U:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "Y8Mrx0I9TdYWTjTrSbpDFDKjoXuQO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "wRs1O0frPXGaUer72uaPv4p6RCTih"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v6, 0x1

    const/16 v4, 0x15

    const/4 v3, 0x0

    if-eqz v5, :cond_b1

    if-ne v5, v7, :cond_af

    const/4 v0, 0x1

    :goto_38
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    :cond_3b
    :goto_3b
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const/4 v5, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    if-ge v0, v4, :cond_8d

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0L:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ac;->A0B(J)I

    move-result v0

    if-lez v0, :cond_6b

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0c:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0C:I

    invoke-virtual {v2, v1, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v5

    if-lez v5, :cond_6b

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0C:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0C:I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6b
    :goto_6b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0E:J

    if-ltz v5, :cond_d6

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    if-eqz v4, :cond_7d

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0L:J

    int-to-long v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0L:J

    :cond_7d
    if-ne v5, v8, :cond_8c

    if-nez v4, :cond_89

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0K:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A05:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0K:J

    :cond_89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0U:Ljava/nio/ByteBuffer;

    :cond_8c
    return-void

    :cond_8d
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0b:Z

    if-eqz v0, :cond_a8

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, p2

    cmp-long v0, v9, v1

    if-eqz v0, :cond_a6

    :goto_9b
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/XL;->A02(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v5

    goto :goto_6b

    :cond_a6
    const/4 v6, 0x0

    goto :goto_9b

    :cond_a8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    invoke-static {v0, v7, v8}, Lcom/facebook/ads/redexgen/X/XL;->A01(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v5

    goto :goto_6b

    :cond_af
    const/4 v0, 0x0

    goto :goto_38

    :cond_b1
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/XL;->A0U:Ljava/nio/ByteBuffer;

    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    if-ge v0, v4, :cond_3b

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0c:[B

    if-eqz v0, :cond_c2

    array-length v0, v0

    if-ge v0, v2, :cond_c6

    :cond_c2
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0c:[B

    :cond_c6
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0c:[B

    invoke-virtual {v7, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0C:I

    goto/16 :goto_3b

    :cond_d6
    new-instance v0, Lcom/facebook/ads/redexgen/X/AV;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/AV;-><init>(I)V

    throw v0
.end method

.method private A0T()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AV;
        }
    .end annotation

    const/4 v8, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A04:I

    const/4 v7, 0x0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0Z:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    :goto_c
    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A04:I

    const/4 v8, 0x1

    :cond_f
    :goto_f
    iget v5, p0, Lcom/facebook/ads/redexgen/X/XL;->A04:I

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A0d:[Lcom/facebook/ads/redexgen/X/AJ;

    array-length v0, v4

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x1

    if-ge v5, v0, :cond_38

    aget-object v0, v4, v5

    if-eqz v8, :cond_23

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AJ;->AE6()V

    :cond_23
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/XL;->A0P(J)V

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AJ;->A8q()Z

    move-result v0

    if-nez v0, :cond_2d

    return v7

    :cond_2d
    const/4 v8, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A04:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A04:I

    goto :goto_f

    :cond_34
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0d:[Lcom/facebook/ads/redexgen/X/AJ;

    array-length v0, v0

    goto :goto_c

    :cond_38
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0U:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_44

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/XL;->A0S(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0U:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_44

    return v7

    :cond_44
    iput v6, p0, Lcom/facebook/ads/redexgen/X/XL;->A04:I

    return v1
.end method

.method private A0U()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private A0V()[Lcom/facebook/ads/redexgen/X/AJ;
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0a:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0n:[Lcom/facebook/ads/redexgen/X/AJ;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0o:[Lcom/facebook/ads/redexgen/X/AJ;

    goto :goto_6
.end method


# virtual methods
.method public final A4M(IIII[III)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    move-object v2, p0

    const/4 v8, 0x0

    iput p3, v2, Lcom/facebook/ads/redexgen/X/XL;->A06:I

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A0c(I)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0m:Z

    if-eqz v0, :cond_5c

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/XL;->A8p(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A0b(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0a:Z

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    if-eqz v0, :cond_29

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Hx;->A05(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0B:I

    :cond_29
    move v6, p1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    if-eqz v0, :cond_5a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5a

    const/4 v7, 0x1

    :goto_32
    if-eqz v7, :cond_58

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0a:Z

    if-nez v0, :cond_58

    const/4 v0, 0x1

    :goto_39
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0V:Z

    if-eqz v7, :cond_a0

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/XL;->A0k:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v3, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_58
    const/4 v0, 0x0

    goto :goto_39

    :cond_5a
    const/4 v7, 0x0

    goto :goto_32

    :cond_5c
    const/4 v0, 0x0

    goto :goto_1d

    :cond_5e
    sget-object v3, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "ej7gIOv1RSWnjsTxHmkmyi8L1IunU9uG"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v1, "hfKjQOc2MeS54BGnG6pnxpZTrszWdpVu"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    move v1, p6

    move/from16 v0, p7

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/XF;->A00(II)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0i:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/XO;->A00([I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0V()[Lcom/facebook/ads/redexgen/X/AJ;

    move-result-object v5

    array-length v4, v5

    const/4 v3, 0x0

    :goto_7b
    if-ge v3, v4, :cond_a0

    aget-object v1, v5, v3

    :try_start_7f
    invoke-interface {v1, p3, p2, v6}, Lcom/facebook/ads/redexgen/X/AJ;->A4N(III)Z

    move-result v0
    :try_end_83
    .catch Lcom/facebook/ads/redexgen/X/AI; {:try_start_7f .. :try_end_83} :catch_99

    or-int/2addr v8, v0

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/AJ;->A8l()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/AJ;->A7P()I

    move-result p2

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/AJ;->A7R()I

    move-result p3

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/AJ;->A7Q()I

    move-result v6

    :cond_96
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :catch_99
    move-exception v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_a0
    packed-switch p2, :pswitch_data_21e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6f

    const/16 v1, 0x1b

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c4
    const/4 v5, 0x4

    goto :goto_da

    :pswitch_c6
    const/16 v5, 0xc

    goto :goto_da

    :pswitch_c9
    const/16 v5, 0x1c

    goto :goto_da

    :pswitch_cc
    const/16 v5, 0xcc

    goto :goto_da

    :pswitch_cf
    const/16 v5, 0xdc

    goto :goto_da

    :pswitch_d2
    const/16 v5, 0xfc

    goto :goto_da

    :pswitch_d5
    const/16 v5, 0x4fc

    goto :goto_da

    :pswitch_d8
    sget v5, Lcom/facebook/ads/redexgen/X/9E;->A00:I

    :goto_da
    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_105

    const/16 v3, 0x8b

    const/4 v1, 0x6

    const/16 v0, 0x15

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A0I(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    const/16 v3, 0x31

    const/4 v1, 0x6

    const/16 v0, 0x65

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A0I(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    packed-switch p2, :pswitch_data_232

    :cond_105
    :goto_105
    :pswitch_105
    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x19

    if-gt v1, v0, :cond_15b

    const/16 v3, 0x91

    const/4 v1, 0x4

    const/16 v0, 0x45

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A0I(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    if-nez v0, :cond_15b

    const/4 v4, 0x1

    if-ne p2, v4, :cond_125

    const/16 v5, 0xc

    :cond_125
    :goto_125
    if-nez v8, :cond_163

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-eqz v0, :cond_163

    iget v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A08:I

    if-ne v0, v6, :cond_163

    iget v8, v2, Lcom/facebook/ads/redexgen/X/XL;->A0A:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v3, v0

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_14c

    if-ne v8, p3, :cond_163

    :goto_147
    iget v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A07:I

    if-ne v0, v5, :cond_163

    return-void

    :cond_14c
    sget-object v3, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "u2P4sXJj5H8su2Kql34JpmWdGsVOFAs5"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const-string v1, "NVG4MXG40xPwcgngyVWUBbOvox4lVKJJ"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    if-ne v8, p3, :cond_163

    goto :goto_147

    :cond_15b
    const/4 v4, 0x1

    goto :goto_125

    :pswitch_15d
    const/16 v5, 0xfc

    goto :goto_105

    :pswitch_160
    sget v5, Lcom/facebook/ads/redexgen/X/9E;->A00:I

    goto :goto_105

    :cond_163
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XL;->reset()V

    iput-boolean v7, v2, Lcom/facebook/ads/redexgen/X/XL;->A0Z:Z

    iput p3, v2, Lcom/facebook/ads/redexgen/X/XL;->A0A:I

    iput v5, v2, Lcom/facebook/ads/redexgen/X/XL;->A07:I

    iput v6, v2, Lcom/facebook/ads/redexgen/X/XL;->A08:I

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    if-eqz v0, :cond_21a

    invoke-static {v6, p2}, Lcom/facebook/ads/redexgen/X/Hx;->A05(II)I

    move-result v0

    :goto_176
    iput v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A09:I

    if-eqz p4, :cond_17d

    iput p4, v2, Lcom/facebook/ads/redexgen/X/XL;->A02:I

    :goto_17c
    return-void

    :cond_17d
    iget-boolean v6, v2, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1c7

    if-eqz v6, :cond_1d6

    :goto_194
    iget v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A08:I

    invoke-static {p3, v5, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v3

    const/4 v0, -0x2

    if-eq v3, v0, :cond_1c5

    :goto_19d
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    mul-int/lit8 v8, v3, 0x4

    const-wide/32 v0, 0x3d090

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/XL;->A07(J)J

    move-result-wide v0

    long-to-int v7, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A09:I

    mul-int/2addr v7, v0

    int-to-long v5, v3

    const-wide/32 v0, 0xb71b0

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/XL;->A07(J)J

    move-result-wide v3

    iget v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A09:I

    int-to-long v0, v0

    mul-long/2addr v3, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-static {v8, v7, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A06(III)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A02:I

    goto :goto_17c

    :cond_1c5
    const/4 v4, 0x0

    goto :goto_19d

    :cond_1c7
    sget-object v3, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "DTWWXXvppHPLDuHJPaEYpRthtIw4YpkI"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const-string v1, "uyl1CXNLwzeT5NMhWvVG28BgBRP6XYYa"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    if-eqz v6, :cond_1d6

    goto :goto_194

    :cond_1d6
    iget v4, v2, Lcom/facebook/ads/redexgen/X/XL;->A08:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1f1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1f1
    sget-object v3, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "14nowEFL6Yk6bTHhGEAerIHyFS"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const-string v1, "whsLbLpoTkO7JKoY0ylMAK08jN"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const/4 v0, 0x5

    if-eq v4, v0, :cond_203

    const/4 v0, 0x6

    if-ne v4, v0, :cond_209

    :cond_203
    const/16 v0, 0x5000

    iput v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A02:I

    goto/16 :goto_17c

    :cond_209
    const/4 v0, 0x7

    if-ne v4, v0, :cond_213

    const v0, 0xc000

    iput v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A02:I

    goto/16 :goto_17c

    :cond_213
    const v0, 0x48000

    iput v0, v2, Lcom/facebook/ads/redexgen/X/XL;->A02:I

    goto/16 :goto_17c

    :cond_21a
    const/4 v0, -0x1

    goto/16 :goto_176

    nop

    :pswitch_data_21e
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_c6
        :pswitch_c9
        :pswitch_cc
        :pswitch_cf
        :pswitch_d2
        :pswitch_d5
        :pswitch_d8
    .end packed-switch

    :pswitch_data_232
    .packed-switch 0x3
        :pswitch_15d
        :pswitch_105
        :pswitch_15d
        :pswitch_105
        :pswitch_160
    .end packed-switch
.end method

.method public final A54()V
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0b:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0b:Z

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XL;->reset()V

    :cond_c
    return-void
.end method

.method public final A5R(I)V
    .registers 7

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    const/4 v4, 0x1

    if-lt v1, v0, :cond_29

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0b:Z

    if-eqz v0, :cond_39

    iget v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_8

    :cond_2b
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "PS7IBOM7NZDOoVGPPjdQOv1dv3IkizxK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "jjqtzOvKeeqNL4elNx3MZRV4owozeHXU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v3, p1, :cond_40

    :cond_39
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A0b:Z

    iput p1, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XL;->reset()V

    :cond_40
    return-void
.end method

.method public final A6Y(Z)J
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    if-nez v0, :cond_d

    :cond_a
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ac;->A0C(Z)J

    move-result-wide v2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A04()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/XL;->A08(J)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0H:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/XL;->A06(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/XL;->A05(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A7Z()Lcom/facebook/ads/redexgen/X/9f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    return-object v0
.end method

.method public final A8H(Ljava/nio/ByteBuffer;J)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AT;,
            Lcom/facebook/ads/redexgen/X/AV;
        }
    .end annotation

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/XL;->A0T:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v11, p1

    if-eqz v0, :cond_c

    if-ne v11, v0, :cond_2c

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_d

    :cond_2e
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "RcCB0XsFwDDOAw3euoH2B524NJP5PtQP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "S6sRDXDIUBrBns4w0IFsbKHJgfJaiswv"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_46

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/XL;->A0K()V

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/XL;->A0Y:Z

    if-eqz v0, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/XL;->ADs()V

    :cond_46
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/XL;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ac;->A0L(J)Z

    move-result v0

    if-nez v0, :cond_53

    return v5

    :cond_53
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/XL;->A0T:Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    const/16 v1, 0xa

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A0I(III)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    move-wide/from16 v0, p2

    if-nez v3, :cond_cc

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_6a

    return v6

    :cond_6a
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    if-nez v2, :cond_7d

    iget v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A05:I

    if-nez v2, :cond_7d

    iget v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A08:I

    invoke-static {v2, v11}, Lcom/facebook/ads/redexgen/X/XL;->A00(ILjava/nio/ByteBuffer;)I

    move-result v2

    iput v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A05:I

    if-nez v2, :cond_7d

    return v6

    :cond_7d
    iget-object v4, v7, Lcom/facebook/ads/redexgen/X/XL;->A0O:Lcom/facebook/ads/redexgen/X/9f;

    const-wide/16 v2, 0x0

    if-eqz v4, :cond_b0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/XL;->A0T()Z

    move-result v4

    if-nez v4, :cond_8a

    return v5

    :cond_8a
    iget-object v5, v7, Lcom/facebook/ads/redexgen/X/XL;->A0O:Lcom/facebook/ads/redexgen/X/9f;

    iput-object v8, v7, Lcom/facebook/ads/redexgen/X/XL;->A0O:Lcom/facebook/ads/redexgen/X/9f;

    iget-object v4, v7, Lcom/facebook/ads/redexgen/X/XL;->A0j:Lcom/facebook/ads/redexgen/X/Af;

    invoke-interface {v4, v5}, Lcom/facebook/ads/redexgen/X/Af;->A3X(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v13

    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    new-instance v12, Lcom/facebook/ads/redexgen/X/Ah;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/XL;->A04()J

    move-result-wide v4

    invoke-direct {v7, v4, v5}, Lcom/facebook/ads/redexgen/X/XL;->A08(J)J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v4, v12

    invoke-direct/range {v12 .. v18}, Lcom/facebook/ads/redexgen/X/Ah;-><init>(Lcom/facebook/ads/redexgen/X/9f;JJLcom/facebook/ads/redexgen/X/Ad;)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/XL;->A0N()V

    :cond_b0
    iget v4, v7, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    if-nez v4, :cond_ed

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0H:J

    iput v6, v7, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    :cond_bc
    :goto_bc
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0X:Z

    if-eqz v2, :cond_e4

    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/XL;->A0J:J

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v4, v2

    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/XL;->A0J:J

    :goto_ca
    iput-object v11, v7, Lcom/facebook/ads/redexgen/X/XL;->A0T:Ljava/nio/ByteBuffer;

    :cond_cc
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0Z:Z

    if-eqz v2, :cond_de

    invoke-direct {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/XL;->A0P(J)V

    :goto_d3
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/XL;->A0T:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_15c

    iput-object v8, v7, Lcom/facebook/ads/redexgen/X/XL;->A0T:Ljava/nio/ByteBuffer;

    return v6

    :cond_de
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0T:Ljava/nio/ByteBuffer;

    invoke-direct {v7, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/XL;->A0S(Ljava/nio/ByteBuffer;J)V

    goto :goto_d3

    :cond_e4
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/XL;->A0I:J

    iget v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A05:I

    int-to-long v2, v2

    add-long/2addr v4, v2

    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/XL;->A0I:J

    goto :goto_ca

    :cond_ed
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/XL;->A0H:J

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/XL;->A03()J

    move-result-wide v2

    invoke-direct {v7, v2, v3}, Lcom/facebook/ads/redexgen/X/XL;->A09(J)J

    move-result-wide v2

    add-long/2addr v4, v2

    iget v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    const/4 v9, 0x2

    if-ne v2, v6, :cond_146

    sub-long v2, v4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v12, 0x30d40

    cmp-long v2, v14, v12

    if-lez v2, :cond_146

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x10

    const/16 v3, 0x21

    const/16 v2, 0x61

    invoke-static {v12, v3, v2}, Lcom/facebook/ads/redexgen/X/XL;->A0I(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v12, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x7

    invoke-static {v12, v3, v2}, Lcom/facebook/ads/redexgen/X/XL;->A0I(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0x8a

    const/4 v3, 0x1

    const/16 v2, 0x4f

    invoke-static {v12, v3, v2}, Lcom/facebook/ads/redexgen/X/XL;->A0I(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, v7, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    :cond_146
    iget v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    if-ne v2, v9, :cond_bc

    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0H:J

    sub-long v12, v0, v4

    add-long/2addr v2, v12

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0H:J

    iput v6, v7, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0R:Lcom/facebook/ads/redexgen/X/AU;

    if-eqz v2, :cond_bc

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/AU;->ACT()V

    goto/16 :goto_bc

    :cond_15c
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/XL;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ac;->A0K(J)Z

    move-result v0

    if-eqz v0, :cond_179

    const/16 v2, 0x37

    const/16 v1, 0x1d

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XL;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/XL;->reset()V

    return v6

    :cond_179
    const/4 v0, 0x0

    return v0
.end method

.method public final A8K()V
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    :cond_8
    return-void
.end method

.method public final A8P()Z
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ac;->A0J(J)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_28
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "9qaAbWK7Rz0EURQ8gVPoKZJ79p"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "PQsLZF4zdgMsSCMdKk30KO6aPE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    return v0
.end method

.method public final A8p(I)Z
    .registers 5

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A0c(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_11

    :cond_10
    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10

    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0g:Lcom/facebook/ads/redexgen/X/AC;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AC;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public final A8q()Z
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0W:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XL;->A8P()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final ADs()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0Y:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A0E()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_13
    return-void
.end method

.method public final ADt()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AV;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0W:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0T()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A04()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ac;->A0F(J)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_32

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_32
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "3Beu4rQqJml6K6p71ugtSnl6z4kve"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "vTiWK9GhFZyDb3TQGI4eNztci47gx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A03:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0W:Z

    :cond_49
    return-void
.end method

.method public final AEO()V
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XL;->reset()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0L()V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0o:[Lcom/facebook/ads/redexgen/X/AJ;

    array-length v2, v3

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_15

    aget-object v0, v3, v1

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AJ;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0n:[Lcom/facebook/ads/redexgen/X/AJ;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v2, :cond_23

    aget-object v0, v3, v1

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AJ;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    iput v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/XL;->A0Y:Z

    return-void
.end method

.method public final AF8(Lcom/facebook/ads/redexgen/X/AB;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0Q:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AB;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0Q:Lcom/facebook/ads/redexgen/X/AB;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0b:Z

    if-eqz v0, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XL;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A01:I

    return-void
.end method

.method public final AFJ(Lcom/facebook/ads/redexgen/X/AU;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0R:Lcom/facebook/ads/redexgen/X/AU;

    return-void
.end method

.method public final AFP(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/9f;
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0V:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/facebook/ads/redexgen/X/9f;->A04:Lcom/facebook/ads/redexgen/X/9f;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    return-object v0

    :cond_f
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0O:Lcom/facebook/ads/redexgen/X/9f;

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "qknQOXr2sfI1wZbS1fFTxKCHwtwOF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "6hx8Cx11JAWA8IEiphxLzKnZtiWJj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_55

    :goto_38
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/9f;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_55
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A02(Lcom/facebook/ads/redexgen/X/Ah;)Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v3

    goto :goto_38

    :cond_6a
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    goto :goto_38

    :cond_6d
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "rapNwYGl5aH6wSWwsREtxqAYY9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Swk5nrnVyktI66zCHmEiilSuas"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_83

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-eqz v0, :cond_86

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0O:Lcom/facebook/ads/redexgen/X/9f;

    :cond_83
    :goto_83
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    return-object v0

    :cond_86
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0j:Lcom/facebook/ads/redexgen/X/Af;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Af;->A3X(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    goto :goto_83
.end method

.method public final pause()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0Y:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A0I()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2c
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v1, "3LzsBOqgGe30i16a9NIVlDJcub4Z4Vvr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "hMaFPO8QBdBmzyeIOXtEGbbLXROtxATQ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V

    :cond_3b
    return-void
.end method

.method public final reset()V
    .registers 8

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0U()Z

    move-result v0

    if-eqz v0, :cond_96

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0J:J

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0I:J

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0L:J

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0K:J

    const/4 v5, 0x0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/XL;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0O:Lcom/facebook/ads/redexgen/X/9f;

    const/4 v3, 0x0

    if-eqz v0, :cond_42

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    sget-object v6, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v4, v6, v0

    const/4 v0, 0x7

    aget-object v6, v6, v0

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v4, v0, :cond_33

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_33
    sget-object v6, Lcom/facebook/ads/redexgen/X/XL;->A0s:[Ljava/lang/String;

    const-string v4, "rnKZk3c8Taby0V4iUj7wGFJub43iz"

    const/4 v0, 0x1

    aput-object v4, v6, v0

    const-string v4, "VEk4k7rPnS3kvq1QwagsAStWXQ6pG"

    const/4 v0, 0x3

    aput-object v4, v6, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0O:Lcom/facebook/ads/redexgen/X/9f;

    goto :goto_58

    :cond_42
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A02(Lcom/facebook/ads/redexgen/X/Ah;)Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0P:Lcom/facebook/ads/redexgen/X/9f;

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0F:J

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0G:J

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0T:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0U:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0J()V

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/XL;->A0W:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A04:I

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0S:Ljava/nio/ByteBuffer;

    iput v5, p0, Lcom/facebook/ads/redexgen/X/XL;->A03:I

    iput v5, p0, Lcom/facebook/ads/redexgen/X/XL;->A0D:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A0H()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_80
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/XL;->A0M:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0h:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A0D()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A0f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Ad;-><init>(Lcom/facebook/ads/redexgen/X/XL;Landroid/media/AudioTrack;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->start()V

    :cond_96
    return-void
.end method

.method public final setVolume(F)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A00:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/facebook/ads/redexgen/X/XL;->A00:F

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XL;->A0M()V

    :cond_b
    return-void
.end method
