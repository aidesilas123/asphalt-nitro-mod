###### Class kotlin.sequences.EmptySequence (kotlin.sequences.e)
.class final Lkotlin/sequences/e;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/f;
.implements Lkotlin/sequences/d;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u000f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0096\u0002J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/sequences/EmptySequence;",
        "Lkotlin/sequences/Sequence;",
        "",
        "Lkotlin/sequences/DropTakeSequence;",
        "()V",
        "drop",
        "n",
        "",
        "iterator",
        "",
        "take",
        "kotlin-stdlib"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/sequences/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/sequences/e;

    invoke-direct {v0}, Lkotlin/sequences/e;-><init>()V

    sput-object v0, Lkotlin/sequences/e;->a:Lkotlin/sequences/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lkotlin/sequences/f;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/sequences/e;->c(I)Lkotlin/sequences/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(I)Lkotlin/sequences/f;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/sequences/e;->d(I)Lkotlin/sequences/e;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lkotlin/sequences/e;
    .registers 2

    sget-object p1, Lkotlin/sequences/e;->a:Lkotlin/sequences/e;

    return-object p1
.end method

.method public d(I)Lkotlin/sequences/e;
    .registers 2

    sget-object p1, Lkotlin/sequences/e;->a:Lkotlin/sequences/e;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    sget-object v0, Lkotlin/collections/r;->a:Lkotlin/collections/r;

    return-object v0
.end method
