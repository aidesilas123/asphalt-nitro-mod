###### Class io.didomi.iabtcf.encoder.exceptions.ValueOverflowException (io.didomi.iabtcf.encoder.exceptions.ValueOverflowException)
.class public Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;
.super Ljava/lang/RuntimeException;
.source "ValueOverflowException.java"


# static fields
.field private static final serialVersionUID:J = 0x776ab1c2ff2b4a64L


# instance fields
.field private final field:Lio/didomi/iabtcf/decoder/utils/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            ">;"
        }
    .end annotation
.end field

.field private final max:Lio/didomi/iabtcf/decoder/utils/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final value:Lio/didomi/iabtcf/decoder/utils/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->field:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->max:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->value:Lio/didomi/iabtcf/decoder/utils/Optional;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p3

    iput-object p3, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->max:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Optional;->of(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->value:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->field:Lio/didomi/iabtcf/decoder/utils/Optional;

    return-void
.end method

.method public constructor <init>(JJLio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p3}, Lio/didomi/iabtcf/decoder/utils/Optional;->of(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p3

    iput-object p3, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->max:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Optional;->of(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->value:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-static {p5}, Lio/didomi/iabtcf/decoder/utils/Optional;->of(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->field:Lio/didomi/iabtcf/decoder/utils/Optional;

    return-void
.end method

.method public constructor <init>(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p3

    iput-object p3, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->max:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Optional;->of(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->value:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->field:Lio/didomi/iabtcf/decoder/utils/Optional;

    return-void
.end method


# virtual methods
.method public getField()Lio/didomi/iabtcf/decoder/utils/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->field:Lio/didomi/iabtcf/decoder/utils/Optional;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueOverflowException [field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->field:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->max:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;->value:Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
