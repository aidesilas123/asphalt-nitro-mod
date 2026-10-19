###### Class okio.internal.ResourceFileSystem.Companion.a (okio.internal.ResourceFileSystem$Companion$a)
.class final Lokio/internal/ResourceFileSystem$Companion$a;
.super Lkotlin/jvm/internal/t;
.source "ResourceFileSystem.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ResourceFileSystem$Companion;->f(Ljava/net/URL;)Lkotlin/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lokio/internal/c;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lokio/internal/ResourceFileSystem$Companion$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokio/internal/ResourceFileSystem$Companion$a;

    invoke-direct {v0}, Lokio/internal/ResourceFileSystem$Companion$a;-><init>()V

    sput-object v0, Lokio/internal/ResourceFileSystem$Companion$a;->a:Lokio/internal/ResourceFileSystem$Companion$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lokio/internal/c;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lokio/internal/ResourceFileSystem;->access$getCompanion$p()Lokio/internal/ResourceFileSystem$Companion;

    move-result-object v0

    invoke-virtual {p1}, Lokio/internal/c;->a()Lokio/Path;

    move-result-object p1

    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lokio/internal/c;

    invoke-virtual {p0, p1}, Lokio/internal/ResourceFileSystem$Companion$a;->a(Lokio/internal/c;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
