###### Class kotlinx.coroutines.channels.BufferedChannelKt.a (kotlinx.coroutines.channels.BufferedChannelKt$a)
.class final synthetic Lkotlinx/coroutines/channels/BufferedChannelKt$a;
.super Lkotlin/jvm/internal/r;
.source "BufferedChannel.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()Lkotlin/reflect/KFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/p<",
        "Ljava/lang/Long;",
        "Lkotlinx/coroutines/channels/d<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/d<",
        "TE;>;>;"
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
.field public static final a:Lkotlinx/coroutines/channels/BufferedChannelKt$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannelKt$a;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/BufferedChannelKt$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt$a;->a:Lkotlinx/coroutines/channels/BufferedChannelKt$a;

    return-void
.end method

.method constructor <init>()V
    .registers 7

    const-class v2, Lkotlinx/coroutines/channels/BufferedChannelKt;

    const/4 v1, 0x2

    const-string v3, "createSegment"

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(JLkotlinx/coroutines/channels/d;)Lkotlinx/coroutines/channels/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/d<",
            "TE;>;)",
            "Lkotlinx/coroutines/channels/d<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$createSegment(JLkotlinx/coroutines/channels/d;)Lkotlinx/coroutines/channels/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lkotlinx/coroutines/channels/d;

    invoke-virtual {p0, v0, v1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt$a;->a(JLkotlinx/coroutines/channels/d;)Lkotlinx/coroutines/channels/d;

    move-result-object p1

    return-object p1
.end method
