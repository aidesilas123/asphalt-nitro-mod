###### Class kotlin.text.MatcherMatchResult.b.a (kotlin.text.MatcherMatchResult$b$a)
.class final Lkotlin/text/MatcherMatchResult$b$a;
.super Lkotlin/jvm/internal/t;
.source "Regex.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/MatcherMatchResult$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/text/MatchGroup;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/text/MatchGroup;",
        "it",
        "",
        "invoke"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlin/text/MatcherMatchResult$b;


# direct methods
.method constructor <init>(Lkotlin/text/MatcherMatchResult$b;)V
    .registers 2

    iput-object p1, p0, Lkotlin/text/MatcherMatchResult$b$a;->a:Lkotlin/text/MatcherMatchResult$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(I)Lkotlin/text/MatchGroup;
    .registers 3

    iget-object v0, p0, Lkotlin/text/MatcherMatchResult$b$a;->a:Lkotlin/text/MatcherMatchResult$b;

    invoke-virtual {v0, p1}, Lkotlin/text/MatcherMatchResult$b;->h(I)Lkotlin/text/MatchGroup;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$b$a;->c(I)Lkotlin/text/MatchGroup;

    move-result-object p1

    return-object p1
.end method
