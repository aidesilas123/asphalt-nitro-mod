###### Class com.tapjoy.internal.f3 (com.tapjoy.internal.f3)
.class public final Lcom/tapjoy/internal/f3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/f3;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a([CII)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    move v1, p2

    const/4 v2, 0x0

    :goto_3
    add-int v3, p2, p3

    if-ge v1, v3, :cond_f

    mul-int/lit8 v2, v2, 0x1f

    aget-char v3, p1, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    ushr-int/lit8 v1, v2, 0x14

    ushr-int/lit8 v3, v2, 0xc

    xor-int/2addr v1, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x7

    ushr-int/lit8 v3, v1, 0x4

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/tapjoy/internal/f3;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v1, v3

    aget-object v2, v2, v1

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, p3, :cond_2c

    goto :goto_3e

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    if-ge v3, p3, :cond_3d

    add-int v5, p2, v3

    aget-char v5, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3a

    goto :goto_3e

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_3d
    const/4 v0, 0x1

    :goto_3e
    if-eqz v0, :cond_41

    return-object v2

    :cond_41
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/tapjoy/internal/f3;->a:[Ljava/lang/String;

    aput-object v0, p1, v1

    return-object v0
.end method
