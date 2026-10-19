###### Class okio.internal.ZipKt.b (okio.internal.ZipKt$b)
.class final Lokio/internal/ZipKt$b;
.super Lkotlin/jvm/internal/t;
.source "zip.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipKt;->openZip$default(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/b/l;ILjava/lang/Object;)Lokio/ZipFileSystem;
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
.field public static final a:Lokio/internal/ZipKt$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokio/internal/ZipKt$b;

    invoke-direct {v0}, Lokio/internal/ZipKt$b;-><init>()V

    sput-object v0, Lokio/internal/ZipKt$b;->a:Lokio/internal/ZipKt$b;

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

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lokio/internal/c;

    invoke-virtual {p0, p1}, Lokio/internal/ZipKt$b;->a(Lokio/internal/c;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
