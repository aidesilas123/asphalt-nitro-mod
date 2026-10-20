###### Class com.applovin.exoplayer2.e.e.a.C0031a (com.applovin.exoplayer2.e.e.a$a)
.class final Lcom/applovin/exoplayer2/e/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final wO:I

.field private final wQ:J


# direct methods
.method private constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/e/e/a$a;->wO:I

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/e/a$a;->wQ:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/applovin/exoplayer2/e/e/a$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/e/a$a;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/e/a$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/a$a;->wQ:J

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/e/e/a$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/e/e/a$a;->wO:I

    return p0
.end method
