###### Class okio.Options (okio.Options)
.class public final Lokio/Options;
.super Lkotlin/collections/c;
.source "Options.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Options$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/c<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final b:Lokio/Options$a;


# instance fields
.field private final c:[Lokio/ByteString;

.field private final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/Options$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Options$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokio/Options;->b:Lokio/Options$a;

    return-void
.end method

.method private constructor <init>([Lokio/ByteString;[I)V
    .registers 3

    invoke-direct {p0}, Lkotlin/collections/c;-><init>()V

    iput-object p1, p0, Lokio/Options;->c:[Lokio/ByteString;

    iput-object p2, p0, Lokio/Options;->d:[I

    return-void
.end method

.method public synthetic constructor <init>([Lokio/ByteString;[ILkotlin/jvm/internal/n;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-void
.end method

.method public static final varargs of([Lokio/ByteString;)Lokio/Options;
    .registers 2

    sget-object v0, Lokio/Options;->b:Lokio/Options$a;

    invoke-virtual {v0, p0}, Lokio/Options$a;->d([Lokio/ByteString;)Lokio/Options;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/Options;->f(Lokio/ByteString;)Z

    move-result p1

    return p1
.end method

.method public e()I
    .registers 2

    iget-object v0, p0, Lokio/Options;->c:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method

.method public bridge f(Lokio/ByteString;)Z
    .registers 2

    invoke-super {p0, p1}, Lkotlin/collections/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lokio/Options;->h(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Lokio/ByteString;
    .registers 3

    iget-object v0, p0, Lokio/Options;->c:[Lokio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final i()[Lokio/ByteString;
    .registers 2

    iget-object v0, p0, Lokio/Options;->c:[Lokio/ByteString;

    return-object v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/Options;->n(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public final j()[I
    .registers 2

    iget-object v0, p0, Lokio/Options;->d:[I

    return-object v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/Options;->r(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public bridge n(Lokio/ByteString;)I
    .registers 2

    invoke-super {p0, p1}, Lkotlin/collections/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge r(Lokio/ByteString;)I
    .registers 2

    invoke-super {p0, p1}, Lkotlin/collections/c;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
