###### Class io.didomi.iabtcf.decoder.LazySegmentFactory.SegmentSupplier (io.didomi.iabtcf.decoder.LazySegmentFactory$SegmentSupplier)
.class Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;
.super Ljava/lang/Object;
.source "LazySegmentFactory.java"

# interfaces
.implements Lio/didomi/iabtcf/decoder/utils/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/LazySegmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SegmentSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/didomi/iabtcf/decoder/utils/function/Supplier<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private current:Lio/didomi/iabtcf/decoder/SegmentInputStream;

.field private final prev:Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;

.field final synthetic this$0:Lio/didomi/iabtcf/decoder/LazySegmentFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lio/didomi/iabtcf/decoder/LazySegmentFactory;)V
    .registers 4

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->this$0:Lio/didomi/iabtcf/decoder/LazySegmentFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->prev:Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;

    new-instance v0, Lio/didomi/iabtcf/decoder/SegmentInputStream;

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/LazySegmentFactory;->access$000(Lio/didomi/iabtcf/decoder/LazySegmentFactory;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/didomi/iabtcf/decoder/SegmentInputStream;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->current:Lio/didomi/iabtcf/decoder/SegmentInputStream;

    return-void
.end method

.method public constructor <init>(Lio/didomi/iabtcf/decoder/LazySegmentFactory;Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->this$0:Lio/didomi/iabtcf/decoder/LazySegmentFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->prev:Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;

    return-void
.end method

.method private getCurrent()Lio/didomi/iabtcf/decoder/SegmentInputStream;
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->current:Lio/didomi/iabtcf/decoder/SegmentInputStream;

    if-nez v0, :cond_24

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->prev:Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;

    invoke-direct {v0}, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->getCurrent()Lio/didomi/iabtcf/decoder/SegmentInputStream;

    move-result-object v0

    sget-object v1, Lio/didomi/iabtcf/decoder/LazySegmentFactory$EmptyInputStream;->INSTANCE:Lio/didomi/iabtcf/decoder/LazySegmentFactory$EmptyInputStream;

    if-ne v0, v1, :cond_11

    iput-object v1, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->current:Lio/didomi/iabtcf/decoder/SegmentInputStream;

    goto :goto_24

    :cond_11
    new-instance v1, Lio/didomi/iabtcf/decoder/SegmentInputStream;

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->this$0:Lio/didomi/iabtcf/decoder/LazySegmentFactory;

    invoke-static {v2}, Lio/didomi/iabtcf/decoder/LazySegmentFactory;->access$000(Lio/didomi/iabtcf/decoder/LazySegmentFactory;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/SegmentInputStream;->segmentEnd()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, v0}, Lio/didomi/iabtcf/decoder/SegmentInputStream;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->current:Lio/didomi/iabtcf/decoder/SegmentInputStream;

    :cond_24
    :goto_24
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->current:Lio/didomi/iabtcf/decoder/SegmentInputStream;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/io/InputStream;
    .registers 2

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->getCurrent()Lio/didomi/iabtcf/decoder/SegmentInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/LazySegmentFactory$SegmentSupplier;->get()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
