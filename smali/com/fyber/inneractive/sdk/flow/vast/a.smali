###### Class com.fyber.inneractive.sdk.flow.vast.a (com.fyber.inneractive.sdk.flow.vast.a)
.class public Lcom/fyber/inneractive/sdk/flow/vast/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/flow/vast/a$b;,
        Lcom/fyber/inneractive/sdk/flow/vast/a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/view/View;

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Lcom/fyber/inneractive/sdk/flow/vast/a$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->b:Landroid/view/View;

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->c:Z

    sget-object v0, Lcom/fyber/inneractive/sdk/flow/vast/a$a;->HIGH:Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->f:Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->b:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->a:Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/flow/vast/a;->b:Landroid/view/View;

    return-void
.end method

###### Class com.fyber.inneractive.sdk.flow.vast.a.EnumC0161a (com.fyber.inneractive.sdk.flow.vast.a$a)
.class public final enum Lcom/fyber/inneractive/sdk/flow/vast/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/flow/vast/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/flow/vast/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/flow/vast/a$a;

.field public static final enum HIGH:Lcom/fyber/inneractive/sdk/flow/vast/a$a;

.field public static final enum LOW:Lcom/fyber/inneractive/sdk/flow/vast/a$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/flow/vast/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/inneractive/sdk/flow/vast/a$a;->HIGH:Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    new-instance v1, Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    const-string v3, "LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fyber/inneractive/sdk/flow/vast/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fyber/inneractive/sdk/flow/vast/a$a;->LOW:Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/fyber/inneractive/sdk/flow/vast/a$a;->$VALUES:[Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/flow/vast/a$a;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/flow/vast/a$a;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/flow/vast/a$a;->$VALUES:[Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/flow/vast/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    return-object v0
.end method

###### Class com.fyber.inneractive.sdk.flow.vast.a.b (com.fyber.inneractive.sdk.flow.vast.a$b)
.class public Lcom/fyber/inneractive/sdk/flow/vast/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/flow/vast/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/fyber/inneractive/sdk/flow/vast/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/fyber/inneractive/sdk/flow/vast/a;

    check-cast p2, Lcom/fyber/inneractive/sdk/flow/vast/a;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/flow/vast/a;->f:Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/flow/vast/a;->f:Lcom/fyber/inneractive/sdk/flow/vast/a$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
