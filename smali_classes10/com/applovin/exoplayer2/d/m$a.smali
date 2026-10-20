###### Class com.applovin.exoplayer2.d.m.a (com.applovin.exoplayer2.d.m$a)
.class public final Lcom/applovin/exoplayer2/d/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final te:Ljava/lang/String;

.field private final tf:[B

.field private final tm:I


# direct methods
.method public constructor <init>([BLjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/m$a;->tf:[B

    iput-object p2, p0, Lcom/applovin/exoplayer2/d/m$a;->te:Ljava/lang/String;

    iput p3, p0, Lcom/applovin/exoplayer2/d/m$a;->tm:I

    return-void
.end method


# virtual methods
.method public hO()[B
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/m$a;->tf:[B

    return-object v0
.end method

.method public hP()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/m$a;->te:Ljava/lang/String;

    return-object v0
.end method
