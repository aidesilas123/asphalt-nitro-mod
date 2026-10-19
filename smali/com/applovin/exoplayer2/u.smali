###### Class com.applovin.exoplayer2.u (com.applovin.exoplayer2.u)
.class public final Lcom/applovin/exoplayer2/u;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final dm:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-static {p1}, Lcom/applovin/exoplayer2/u;->A(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/applovin/exoplayer2/u;->dm:I

    return-void
.end method

.method private static A(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const-string p0, "Undefined timeout."

    return-object p0

    :cond_c
    const-string p0, "Detaching surface timed out."

    return-object p0

    :cond_f
    const-string p0, "Setting foreground mode timed out."

    return-object p0

    :cond_12
    const-string p0, "Player release timed out."

    return-object p0
.end method
