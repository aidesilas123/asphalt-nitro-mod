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
