###### Class io.didomi.drawable.C1806k.i.c.a (io.didomi.sdk.k$i$c$a)
.class public final enum Lio/didomi/sdk/k$i$c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/k$i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/k$i$c$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/didomi/sdk/k$i$c$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB%\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001f\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/didomi/sdk/k$i$c$a;",
        "",
        "",
        "gravity",
        "",
        "",
        "values",
        "<init>",
        "(Ljava/lang/String;II[Ljava/lang/String;)V",
        "a",
        "I",
        "b",
        "()I",
        "[Ljava/lang/String;",
        "c",
        "()[Ljava/lang/String;",
        "d",
        "e",
        "f",
        "g",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final c:Lio/didomi/sdk/k$i$c$a$a;

.field public static final enum d:Lio/didomi/sdk/k$i$c$a;

.field public static final enum e:Lio/didomi/sdk/k$i$c$a;

.field public static final enum f:Lio/didomi/sdk/k$i$c$a;

.field public static final enum g:Lio/didomi/sdk/k$i$c$a;

.field private static final synthetic h:[Lio/didomi/sdk/k$i$c$a;


# instance fields
.field private final a:I

.field private final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lio/didomi/sdk/k$i$c$a;

    const-string v1, "center"

    const-string v2, "middle"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "CENTER"

    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-direct {v0, v2, v3, v4, v1}, Lio/didomi/sdk/k$i$c$a;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/k$i$c$a;->d:Lio/didomi/sdk/k$i$c$a;

    new-instance v0, Lio/didomi/sdk/k$i$c$a;

    const-string v1, "start"

    const-string v2, "left"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "START"

    const/4 v3, 0x1

    const v4, 0x800003

    invoke-direct {v0, v2, v3, v4, v1}, Lio/didomi/sdk/k$i$c$a;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/k$i$c$a;->e:Lio/didomi/sdk/k$i$c$a;

    new-instance v0, Lio/didomi/sdk/k$i$c$a;

    const-string v1, "end"

    const-string v2, "right"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "END"

    const/4 v3, 0x2

    const v5, 0x800005

    invoke-direct {v0, v2, v3, v5, v1}, Lio/didomi/sdk/k$i$c$a;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/k$i$c$a;->f:Lio/didomi/sdk/k$i$c$a;

    new-instance v0, Lio/didomi/sdk/k$i$c$a;

    const-string v1, "justify"

    const-string v2, "justified"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "JUSTIFY"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lio/didomi/sdk/k$i$c$a;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/k$i$c$a;->g:Lio/didomi/sdk/k$i$c$a;

    invoke-static {}, Lio/didomi/sdk/k$i$c$a;->a()[Lio/didomi/sdk/k$i$c$a;

    move-result-object v0

    sput-object v0, Lio/didomi/sdk/k$i$c$a;->h:[Lio/didomi/sdk/k$i$c$a;

    new-instance v0, Lio/didomi/sdk/k$i$c$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/k$i$c$a$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/k$i$c$a;->c:Lio/didomi/sdk/k$i$c$a$a;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/didomi/sdk/k$i$c$a;->a:I

    iput-object p4, p0, Lio/didomi/sdk/k$i$c$a;->b:[Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lio/didomi/sdk/k$i$c$a;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/didomi/sdk/k$i$c$a;

    sget-object v1, Lio/didomi/sdk/k$i$c$a;->d:Lio/didomi/sdk/k$i$c$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/k$i$c$a;->e:Lio/didomi/sdk/k$i$c$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/k$i$c$a;->f:Lio/didomi/sdk/k$i$c$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/k$i$c$a;->g:Lio/didomi/sdk/k$i$c$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/didomi/sdk/k$i$c$a;
    .registers 2

    const-class v0, Lio/didomi/sdk/k$i$c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/k$i$c$a;

    return-object p0
.end method

.method public static values()[Lio/didomi/sdk/k$i$c$a;
    .registers 1

    sget-object v0, Lio/didomi/sdk/k$i$c$a;->h:[Lio/didomi/sdk/k$i$c$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/k$i$c$a;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/k$i$c$a;->a:I

    return v0
.end method

.method public final c()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$i$c$a;->b:[Ljava/lang/String;

    return-object v0
.end method
