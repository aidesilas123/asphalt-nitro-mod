###### Class kotlin.streams.jdk8.a (kotlin.streams.jdk8.a)
.class public final synthetic Lkotlin/streams/jdk8/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lkotlin/sequences/f;


# direct methods
.method public synthetic constructor <init>(Lkotlin/sequences/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/streams/jdk8/a;->a:Lkotlin/sequences/f;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlin/streams/jdk8/a;->a:Lkotlin/sequences/f;

    invoke-static {v0}, Lkotlin/streams/jdk8/StreamsKt;->b(Lkotlin/sequences/f;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
