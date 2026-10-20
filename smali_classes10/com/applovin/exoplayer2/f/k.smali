###### Class com.applovin.exoplayer2.f.k (com.applovin.exoplayer2.f.k)
.class public interface abstract Lcom/applovin/exoplayer2/f/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IR:Lcom/applovin/exoplayer2/f/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/f/x;->a:Lcom/applovin/exoplayer2/f/x;

    sput-object v0, Lcom/applovin/exoplayer2/f/k;->IR:Lcom/applovin/exoplayer2/f/k;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/f/i;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/f/l$b;
        }
    .end annotation
.end method
