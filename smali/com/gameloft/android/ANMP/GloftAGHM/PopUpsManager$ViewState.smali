###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsManager.ViewState (com.gameloft.android.ANMP.GloftAGHM.PopUpsManager$ViewState)
.class public final enum Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;
.super Ljava/lang/Enum;
.source "PopUpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

.field public static final enum b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

.field public static final enum c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

.field public static final enum d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

.field private static final synthetic e:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    const-string v1, "E_VS_UNDEFINED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    const-string v3, "E_VS_NOT_DOWNLOAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    new-instance v3, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    const-string v5, "E_VS_INVISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    new-instance v5, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    const-string v7, "E_VS_VISIBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;
    .registers 2

    const-class v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    return-object v0
.end method


# virtual methods
.method public e()I
    .registers 2

    iget v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->f:I

    return v0
.end method
