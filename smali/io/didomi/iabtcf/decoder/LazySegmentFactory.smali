###### Class io.didomi.iabtcf.decoder.LazySegmentFactory (io.didomi.iabtcf.decoder.LazySegmentFactory)
.class Lio/didomi/iabtcf/decoder/LazySegmentFactory;
.super Ljava/lang/Object;
.source "LazySegmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;,
        Lio/didomi/iabtcf/decoder/LazySegmentFactory$EmptyInputStream;
    }
.end annotation


# instance fields
.field private final src:Ljava/lang/String;

.field private sup:Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory;->src:Ljava/lang/String;

    new-instance p1, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;

    invoke-direct {p1, p0}, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;-><init>(Lio/didomi/iabtcf/decoder/LazySegmentFactory;)V

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory;->sup:Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;

    return-void
.end method

.method static synthetic access$000(Lio/didomi/iabtcf/decoder/LazySegmentFactory;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory;->src:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public next()Lio/didomi/iabtcf/decoder/utils/function/Supplier;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/didomi/iabtcf/decoder/utils/function/Supplier<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory;->sup:Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;

    new-instance v1, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;

    invoke-direct {v1, p0, v0}, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;-><init>(Lio/didomi/iabtcf/decoder/LazySegmentFactory;Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;)V

    iput-object v1, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory;->sup:Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;

    return-object v0
.end method
