###### Class kotlin.reflect.jvm.internal.KClassImpl.Data.q.b (kotlin.reflect.jvm.internal.KClassImpl$Data$q$b)
.class final Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$b;
.super Lkotlin/jvm/internal/t;
.source "KClassImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;->c()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Class<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$b;->a:Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$b;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
