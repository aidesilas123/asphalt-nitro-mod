###### Class io.didomi.iabtcf.decoder.TCStringV2.AnonymousClass1 (io.didomi.iabtcf.decoder.TCStringV2$1)
.class final Lio/didomi/iabtcf/decoder/TCStringV2$1;
.super Ljava/lang/Object;
.source "TCStringV2.java"

# interfaces
.implements Lio/didomi/iabtcf/decoder/utils/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/iabtcf/decoder/TCStringV2;->vendorIdsFromRange(Lio/didomi/iabtcf/decoder/utils/BitReader;Ljava/util/BitSet;ILio/didomi/iabtcf/decoder/utils/Optional;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/didomi/iabtcf/decoder/utils/function/Function<",
        "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;


# direct methods
.method constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/TCStringV2$1;->val$bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2$1;->val$bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits16(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/TCStringV2$1;->apply(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
