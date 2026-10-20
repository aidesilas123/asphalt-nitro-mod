###### Class com.applovin.exoplayer2.d.n (com.applovin.exoplayer2.d.n)
.class public final Lcom/applovin/exoplayer2/d/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/c/b;


# static fields
.field public static final to:Z


# instance fields
.field public final ey:Ljava/util/UUID;

.field public final su:[B

.field public final tp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->acX:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->acY:Ljava/lang/String;

    const-string v1, "AFTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "AFTB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    sput-boolean v0, Lcom/applovin/exoplayer2/d/n;->to:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[BZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/n;->ey:Ljava/util/UUID;

    iput-object p2, p0, Lcom/applovin/exoplayer2/d/n;->su:[B

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/d/n;->tp:Z

    return-void
.end method
