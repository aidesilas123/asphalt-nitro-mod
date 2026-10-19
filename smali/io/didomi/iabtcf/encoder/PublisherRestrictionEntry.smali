###### Class io.didomi.iabtcf.encoder.PublisherRestrictionEntry (io.didomi.iabtcf.encoder.PublisherRestrictionEntry)
.class public Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;
.super Ljava/lang/Object;
.source "PublisherRestrictionEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
    }
.end annotation


# instance fields
.field private final purposeId:I

.field private final restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

.field private final vendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;


# direct methods
.method private constructor <init>(ILio/didomi/iabtcf/decoder/v2/RestrictionType;Lio/didomi/iabtcf/decoder/utils/IntIterable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_12

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PURPOSE_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {p1, v0}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(ILio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result p1

    iput p1, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->purposeId:I

    iput-object p2, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    iput-object p3, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->vendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-void

    :cond_12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "purposeId must be positive: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method synthetic constructor <init>(ILio/didomi/iabtcf/decoder/v2/RestrictionType;Lio/didomi/iabtcf/decoder/utils/IntIterable;Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;-><init>(ILio/didomi/iabtcf/decoder/v2/RestrictionType;Lio/didomi/iabtcf/decoder/utils/IntIterable;)V

    return-void
.end method

.method static synthetic access$000(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)I
    .registers 1

    iget p0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->purposeId:I

    return p0
.end method

.method static synthetic access$100(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)Lio/didomi/iabtcf/decoder/v2/RestrictionType;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    return-object p0
.end method

.method static synthetic access$200(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->vendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object p0
.end method

.method public static newBuilder()Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
    .registers 1

    new-instance v0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;

    invoke-direct {v0}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;-><init>(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;)V

    return-object v0
.end method

.method public static newBuilder(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;-><init>(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)V

    return-object v0
.end method


# virtual methods
.method public getPurposeId()I
    .registers 2

    iget v0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->purposeId:I

    return v0
.end method

.method public getRestrictionType()Lio/didomi/iabtcf/decoder/v2/RestrictionType;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    return-object v0
.end method

.method public getVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->vendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

###### Class io.didomi.iabtcf.encoder.PublisherRestrictionEntry.AnonymousClass1 (io.didomi.iabtcf.encoder.PublisherRestrictionEntry$1)
.class synthetic Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$1;
.super Ljava/lang/Object;
.source "PublisherRestrictionEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.didomi.iabtcf.encoder.PublisherRestrictionEntry.Builder (io.didomi.iabtcf.encoder.PublisherRestrictionEntry$Builder)
.class public Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
.super Ljava/lang/Object;
.source "PublisherRestrictionEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private purposeId:I

.field private restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

.field private final vendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->vendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-void
.end method

.method public constructor <init>(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->vendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iget v1, p1, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->purposeId:I

    iput v1, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->purposeId:I

    iget-object v1, p1, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    iget-object p1, p1, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->vendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-void
.end method

.method public constructor <init>(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->vendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->access$000(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)I

    move-result v1

    iput v1, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->purposeId:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->access$100(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->access$200(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-void
.end method


# virtual methods
.method public addVendor(I)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->vendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor id must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addVendor(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
    .registers 3

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/utils/OfInt;->nextInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->addVendor(I)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;

    goto :goto_4

    :cond_12
    return-object p0
.end method

.method public varargs addVendor([I)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->addVendor(I)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-object p0
.end method

.method public build()Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;
    .registers 6

    new-instance v0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;

    iget v1, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->purposeId:I

    iget-object v2, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    iget-object v3, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->vendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v3}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;-><init>(ILio/didomi/iabtcf/decoder/v2/RestrictionType;Lio/didomi/iabtcf/decoder/utils/IntIterable;Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$1;)V

    return-object v0
.end method

.method public clearVendors()Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->vendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public purposeId(I)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
    .registers 2

    iput p1, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->purposeId:I

    return-object p0
.end method

.method public restrictionType(Lio/didomi/iabtcf/decoder/v2/RestrictionType;)Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;
    .registers 2

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry$Builder;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    return-object p0
.end method
