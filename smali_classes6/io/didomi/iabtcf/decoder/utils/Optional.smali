###### Class io.didomi.iabtcf.decoder.utils.Optional (io.didomi.iabtcf.decoder.utils.Optional)
.class public final Lio/didomi/iabtcf/decoder/utils/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lio/didomi/iabtcf/decoder/utils/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-direct {v0}, Lio/didomi/iabtcf/decoder/utils/Optional;-><init>()V

    sput-object v0, Lio/didomi/iabtcf/decoder/utils/Optional;->EMPTY:Lio/didomi/iabtcf/decoder/utils/Optional;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method public static empty()Lio/didomi/iabtcf/decoder/utils/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Optional;->EMPTY:Lio/didomi/iabtcf/decoder/utils/Optional;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/Optional;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/utils/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lio/didomi/iabtcf/decoder/utils/Optional;->of(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p0

    :goto_b
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lio/didomi/iabtcf/decoder/utils/Optional;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lio/didomi/iabtcf/decoder/utils/Optional;

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    iget-object p1, p1, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public filter(Lio/didomi/iabtcf/decoder/utils/function/Predicate;)Lio/didomi/iabtcf/decoder/utils/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/iabtcf/decoder/utils/function/Predicate<",
            "-TT;>;)",
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_a

    return-object p0

    :cond_a
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/didomi/iabtcf/decoder/utils/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    move-object p1, p0

    goto :goto_18

    :cond_14
    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    :goto_18
    return-object p1
.end method

.method public flatMap(Lio/didomi/iabtcf/decoder/utils/function/Function;)Lio/didomi/iabtcf/decoder/utils/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/didomi/iabtcf/decoder/utils/function/Function<",
            "-TT;",
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "TU;>;>;)",
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    return-object p1

    :cond_e
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/didomi/iabtcf/decoder/utils/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/iabtcf/decoder/utils/Optional;

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifPresent(Lio/didomi/iabtcf/decoder/utils/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/iabtcf/decoder/utils/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    invoke-interface {p1, v0}, Lio/didomi/iabtcf/decoder/utils/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public isPresent()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public map(Lio/didomi/iabtcf/decoder/utils/function/Function;)Lio/didomi/iabtcf/decoder/utils/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/didomi/iabtcf/decoder/utils/function/Function<",
            "-TT;+TU;>;)",
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/utils/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    return-object p1

    :cond_e
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/didomi/iabtcf/decoder/utils/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Optional;->ofNullable(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    return-object p1
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    move-object p1, v0

    :cond_5
    return-object p1
.end method

.method public orElseGet(Lio/didomi/iabtcf/decoder/utils/function/Supplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/iabtcf/decoder/utils/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/utils/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public orElseThrow(Lio/didomi/iabtcf/decoder/utils/function/Supplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lio/didomi/iabtcf/decoder/utils/function/Supplier<",
            "+TX;>;)TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/utils/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Optional[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, "Optional.empty"

    :goto_13
    return-object v0
.end method
