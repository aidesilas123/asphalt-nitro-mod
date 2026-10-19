###### Class kotlin.text.Regex.c (kotlin.text.Regex$c)
.class final synthetic Lkotlin/text/Regex$c;
.super Lkotlin/jvm/internal/r;
.source "Regex.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/Regex;->c(Ljava/lang/CharSequence;I)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/l<",
        "Lkotlin/text/MatchResult;",
        "Lkotlin/text/MatchResult;",
        ">;"
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
.field public static final a:Lkotlin/text/Regex$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/text/Regex$c;

    invoke-direct {v0}, Lkotlin/text/Regex$c;-><init>()V

    sput-object v0, Lkotlin/text/Regex$c;->a:Lkotlin/text/Regex$c;

    return-void
.end method

.method constructor <init>()V
    .registers 7

    const-class v2, Lkotlin/text/MatchResult;

    const/4 v1, 0x1

    const-string v3, "next"

    const-string v4, "next()Lkotlin/text/MatchResult;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/text/MatchResult;)Lkotlin/text/MatchResult;
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/text/MatchResult;->next()Lkotlin/text/MatchResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/text/MatchResult;

    invoke-virtual {p0, p1}, Lkotlin/text/Regex$c;->a(Lkotlin/text/MatchResult;)Lkotlin/text/MatchResult;

    move-result-object p1

    return-object p1
.end method
