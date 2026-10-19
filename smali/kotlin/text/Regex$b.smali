###### Class kotlin.text.Regex.b (kotlin.text.Regex$b)
.class final Lkotlin/text/Regex$b;
.super Lkotlin/jvm/internal/t;
.source "Regex.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/Regex;->c(Ljava/lang/CharSequence;I)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/text/MatchResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/text/MatchResult;",
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
.field final synthetic a:Lkotlin/text/Regex;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)V
    .registers 4

    iput-object p1, p0, Lkotlin/text/Regex$b;->a:Lkotlin/text/Regex;

    iput-object p2, p0, Lkotlin/text/Regex$b;->b:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/Regex$b;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/text/MatchResult;
    .registers 4

    iget-object v0, p0, Lkotlin/text/Regex$b;->a:Lkotlin/text/Regex;

    iget-object v1, p0, Lkotlin/text/Regex$b;->b:Ljava/lang/CharSequence;

    iget v2, p0, Lkotlin/text/Regex$b;->c:I

    invoke-virtual {v0, v1, v2}, Lkotlin/text/Regex;->b(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/text/Regex$b;->c()Lkotlin/text/MatchResult;

    move-result-object v0

    return-object v0
.end method
