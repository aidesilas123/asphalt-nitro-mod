###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsManager.PopUpsError (com.gameloft.android.ANMP.GloftAGHM.PopUpsManager$PopUpsError)
.class public final enum Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
.super Ljava/lang/Enum;
.source "PopUpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PopUpsError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum g:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum h:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field private static final synthetic i:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v1, "E_UNDEFINED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v3, "E_SUCCESSFUL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v3, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v5, "E_FILE_NOT_VALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v5, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v7, "E_FILE_DOWNLONDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v7, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v9, "E_FILE_DOWNLOND_FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v9, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v11, "E_BRIDGE_CLASS_NEVER_INIT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v11, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v13, "E_UNZIP_FAILED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->g:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v13, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v15, "E_FAILED_TO_CREATE_WEBVIEW"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    const/4 v0, 0x5

    aput-object v9, v15, v0

    aput-object v11, v15, v14

    aput-object v13, v15, v12

    sput-object v15, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->i:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

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

    iput p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->j:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
    .registers 2

    const-class v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    return-object p0
.end method

.method public static values()[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->i:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    invoke-virtual {v0}, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    return-object v0
.end method


# virtual methods
.method public e()I
    .registers 2

    iget v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->j:I

    return v0
.end method
