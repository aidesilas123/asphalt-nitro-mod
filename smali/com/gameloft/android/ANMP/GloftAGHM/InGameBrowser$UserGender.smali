###### Class com.gameloft.android.ANMP.GloftAGHM.InGameBrowser.UserGender (com.gameloft.android.ANMP.GloftAGHM.InGameBrowser$UserGender)
.class final enum Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;
.super Ljava/lang/Enum;
.source "InGameBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UserGender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

.field public static final enum b:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

.field public static final enum c:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

.field private static final synthetic d:[Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    const-string v1, "GENDER_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    const-string v3, "GENDER_MALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;->b:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    new-instance v3, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    const-string v5, "GENDER_FEMALE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;->c:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;->d:[Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;
    .registers 2

    const-class v0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    return-object p0
.end method

.method public static values()[Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;->d:[Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    invoke-virtual {v0}, [Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$UserGender;

    return-object v0
.end method
