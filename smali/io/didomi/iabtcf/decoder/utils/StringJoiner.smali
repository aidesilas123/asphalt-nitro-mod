###### Class io.didomi.iabtcf.decoder.utils.StringJoiner (io.didomi.iabtcf.decoder.utils.StringJoiner)
.class public final Lio/didomi/iabtcf/decoder/utils/StringJoiner;
.super Ljava/lang/Object;
.source "StringJoiner.java"


# instance fields
.field private final delimiter:Ljava/lang/String;

.field private emptyValue:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;

.field private value:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, Lio/didomi/iabtcf/decoder/utils/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The prefix must not be null"

    invoke-static {p2, v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The delimiter must not be null"

    invoke-static {p1, v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The suffix must not be null"

    invoke-static {p3, v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->prefix:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->suffix:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->emptyValue:Ljava/lang/String;

    return-void
.end method

.method private prepareBuilder()Ljava/lang/StringBuilder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    :goto_16
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)Lio/didomi/iabtcf/decoder/utils/StringJoiner;
    .registers 3

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public length()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->emptyValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_16
    return v0
.end method

.method public merge(Lio/didomi/iabtcf/decoder/utils/StringJoiner;)Lio/didomi/iabtcf/decoder/utils/StringJoiner;
    .registers 5

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-direct {p0}, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_1a
    return-object p0
.end method

.method public setEmptyValue(Ljava/lang/CharSequence;)Lio/didomi/iabtcf/decoder/utils/StringJoiner;
    .registers 3

    const-string v0, "The empty value must not be null"

    invoke-static {p1, v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->emptyValue:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-nez v0, :cond_7

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->emptyValue:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->suffix:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v1
.end method
