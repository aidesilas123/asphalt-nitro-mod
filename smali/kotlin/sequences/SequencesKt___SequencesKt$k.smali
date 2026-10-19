###### Class kotlin.sequences.SequencesKt___SequencesKt.k (kotlin.sequences.SequencesKt___SequencesKt$k)
.class final synthetic Lkotlin/sequences/SequencesKt___SequencesKt$k;
.super Lkotlin/jvm/internal/r;
.source "_Sequences.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt___SequencesKt;->flatMapIndexedSequence(Lkotlin/sequences/f;Lkotlin/jvm/b/p;)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/l<",
        "Lkotlin/sequences/f<",
        "+TR;>;",
        "Ljava/util/Iterator<",
        "+TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/sequences/SequencesKt___SequencesKt$k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesKt$k;

    invoke-direct {v0}, Lkotlin/sequences/SequencesKt___SequencesKt$k;-><init>()V

    sput-object v0, Lkotlin/sequences/SequencesKt___SequencesKt$k;->a:Lkotlin/sequences/SequencesKt___SequencesKt$k;

    return-void
.end method

.method constructor <init>()V
    .registers 7

    const-class v2, Lkotlin/sequences/f;

    const/4 v1, 0x1

    const-string v3, "iterator"

    const-string v4, "iterator()Ljava/util/Iterator;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/sequences/f;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/f<",
            "+TR;>;)",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/sequences/f;

    invoke-virtual {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$k;->a(Lkotlin/sequences/f;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
