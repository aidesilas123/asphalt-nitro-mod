###### Class com.fyber.inneractive.sdk.util.o0 (com.fyber.inneractive.sdk.util.o0)
.class public Lcom/fyber/inneractive/sdk/util/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/util/o0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/fyber/inneractive/sdk/util/o0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/util/o0$a;

.field public b:Landroid/net/Uri;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/o0$a;Landroid/net/Uri;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/util/o0$a;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/o0;->a:Lcom/fyber/inneractive/sdk/util/o0$a;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/util/o0;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/util/o0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/fyber/inneractive/sdk/util/o0;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/o0;->a:Lcom/fyber/inneractive/sdk/util/o0$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/o0$a;->mPriority:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/util/o0;->a:Lcom/fyber/inneractive/sdk/util/o0$a;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/util/o0$a;->mPriority:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

###### Class com.fyber.inneractive.sdk.util.o0.a (com.fyber.inneractive.sdk.util.o0$a)
.class public final enum Lcom/fyber/inneractive/sdk/util/o0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/util/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/util/o0$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/util/o0$a;

.field public static final enum FallBack:Lcom/fyber/inneractive/sdk/util/o0$a;

.field public static final enum Primary:Lcom/fyber/inneractive/sdk/util/o0$a;


# instance fields
.field public mPriority:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/fyber/inneractive/sdk/util/o0$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Primary"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/fyber/inneractive/sdk/util/o0$a;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/util/o0$a;->Primary:Lcom/fyber/inneractive/sdk/util/o0$a;

    new-instance v2, Lcom/fyber/inneractive/sdk/util/o0$a;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "FallBack"

    invoke-direct {v2, v6, v1, v5}, Lcom/fyber/inneractive/sdk/util/o0$a;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/fyber/inneractive/sdk/util/o0$a;->FallBack:Lcom/fyber/inneractive/sdk/util/o0$a;

    new-array v3, v3, [Lcom/fyber/inneractive/sdk/util/o0$a;

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    sput-object v3, Lcom/fyber/inneractive/sdk/util/o0$a;->$VALUES:[Lcom/fyber/inneractive/sdk/util/o0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/util/o0$a;->mPriority:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/util/o0$a;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/util/o0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/util/o0$a;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/util/o0$a;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/util/o0$a;->$VALUES:[Lcom/fyber/inneractive/sdk/util/o0$a;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/util/o0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/util/o0$a;

    return-object v0
.end method
