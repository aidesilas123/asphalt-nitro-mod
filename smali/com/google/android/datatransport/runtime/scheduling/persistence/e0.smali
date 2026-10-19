###### Class com.google.android.datatransport.runtime.scheduling.persistence.e0 (com.google.android.datatransport.runtime.scheduling.persistence.e0)
.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;


# static fields
.field public static final synthetic a:Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
