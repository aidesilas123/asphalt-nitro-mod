###### Class com.koushikdutta.quack.Memoize.MemoizeMapImpl (com.koushikdutta.quack.Memoize$MemoizeMapImpl)
.class Lcom/koushikdutta/quack/Memoize$MemoizeMapImpl;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/quack/Memoize$MemoizeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/quack/Memoize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoizeMapImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "TV;>;",
        "Lcom/koushikdutta/quack/Memoize$MemoizeMap<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x37cb740e5cddfe29L


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/koushikdutta/quack/Memoize$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/koushikdutta/quack/Memoize$MemoizeMapImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
