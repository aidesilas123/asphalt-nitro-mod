package com.kidoz.sdk.api.general;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.drive.DriveFile;
import com.kidoz.events.EventManager;
import com.kidoz.sdk.api.dialogs.ParentalLockDialog;
import com.kidoz.sdk.api.general.database.DatabaseManager;
import com.kidoz.sdk.api.general.enums.ContentType;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.players.web_player.WebPlayerDialog;
import com.kidoz.sdk.api.players.web_player.WebPlayerType;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.structure.IsEventRecord;

/* JADX INFO: loaded from: classes4.dex */
public class ContentExecutionHandler {
    public static final int CLICK_REGULATION_TIME_FRAME = 1700;
    public static final int PROMOTED_CONTENT_CLICK_RESTORE_TIMEOUT = 3000;
    public static final String TAG = "ContentExecutionHandler";
    public static long mLastClickActionTimeStamp;
    protected static Utils.StaticHandler mStaticHandler;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.general.ContentExecutionHandler$7, reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType;

        static {
            int[] iArr = new int[ContentType.values().length];
            $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType = iArr;
            try {
                iArr[ContentType.ROVIO_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType[ContentType.GOOGLE_PLAY_APPLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType[ContentType.PROMOTED_PLAY_APPLICATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType[ContentType.WEB_GAME_URL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType[ContentType.WEBSITE_URL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType[ContentType.EXTERNAL_BROWSER_URL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType[ContentType.HTML.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public interface IOnHandleClickListener {
        void onRestoreClick();
    }

    public interface IOnParentalLockStatusListener {
        void onLockActive(boolean z);

        void onLockNotActive();
    }

    public static void checkForParentalLock(Context context, final IOnParentalLockStatusListener iOnParentalLockStatusListener) {
        if (ParentalLockDialog.isParentalLockActive(context)) {
            ParentalLockDialog.startParentalDialog(context, true, 0.5f, 0.5f, new ParentalLockDialog.IOnParentalDialogListener() { // from class: com.kidoz.sdk.api.general.ContentExecutionHandler.5
                @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
                public void onCloseDialog() {
                }

                @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
                public void onInputPass(boolean z) {
                    iOnParentalLockStatusListener.onLockActive(z);
                }
            });
        } else {
            iOnParentalLockStatusListener.onLockNotActive();
        }
    }

    private static Utils.StaticHandler getUiHandlerInstance() {
        if (mStaticHandler == null) {
            mStaticHandler = new Utils.StaticHandler(Looper.getMainLooper()) { // from class: com.kidoz.sdk.api.general.ContentExecutionHandler.6
                @Override // com.kidoz.sdk.api.general.utils.Utils.StaticHandler, android.os.Handler
                public void handleMessage(Message message) {
                }
            };
        }
        return mStaticHandler;
    }

    public static void handleContentItemClick(final Context context, final ContentItem contentItem, final String str, final String str2, final int i, final boolean z, final IOnHandleClickListener iOnHandleClickListener) {
        if (System.currentTimeMillis() - mLastClickActionTimeStamp > 1700) {
            switch (AnonymousClass7.$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType[contentItem.getContentType().ordinal()]) {
                case 1:
                    EventManager.getInstance(context).m(context, str, str2, contentItem.getName(), contentItem.getAdvertiserID(), contentItem.getId(), i);
                    new WebPlayerDialog(context, contentItem, str, str2, WebPlayerType.ROVIO, z).openDialog();
                    break;
                case 2:
                    checkForParentalLock(context, new IOnParentalLockStatusListener() { // from class: com.kidoz.sdk.api.general.ContentExecutionHandler.1
                        @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnParentalLockStatusListener
                        public void onLockActive(boolean z2) {
                            if (z2) {
                                ContentExecutionHandler.onGooglePlayApp(context, contentItem, str, str2, i);
                            } else {
                                EventManager.getInstance(context).h(context, str, str2, EventManager.b, null, "SDK", "Incorrect Password", contentItem.getId());
                            }
                        }

                        @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnParentalLockStatusListener
                        public void onLockNotActive() {
                            ContentExecutionHandler.onGooglePlayApp(context, contentItem, str, str2, i);
                        }
                    });
                    break;
                case 3:
                    if (context != null) {
                        checkForParentalLock(context, new IOnParentalLockStatusListener() { // from class: com.kidoz.sdk.api.general.ContentExecutionHandler.2
                            @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnParentalLockStatusListener
                            public void onLockActive(boolean z2) {
                                if (!z2) {
                                    EventManager.getInstance(context).h(context, str, str2, EventManager.b, null, "Sponsored Content", "Incorrect Password", contentItem.getId());
                                    return;
                                }
                                ContentExecutionHandler.onPromotedAppItemClick(context, contentItem, str, str2, i, z);
                                IsEventRecord isEventRecord = new IsEventRecord();
                                isEventRecord.setPackageName(contentItem.getId());
                                isEventRecord.setContentType(contentItem.getContentType().toString());
                                isEventRecord.setName(contentItem.getName());
                                isEventRecord.setPositionIndex(i);
                                isEventRecord.setAdvertiserId(contentItem.getAdvertiserID());
                                isEventRecord.setTimeStamp(System.currentTimeMillis() + "");
                                isEventRecord.setWidgetType(str);
                                isEventRecord.setStyleId(str2);
                                DatabaseManager.getInstance(context).getIsEventTable().insertRecord(isEventRecord);
                            }

                            @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnParentalLockStatusListener
                            public void onLockNotActive() {
                                ContentExecutionHandler.onPromotedAppItemClick(context, contentItem, str, str2, i, z);
                                IsEventRecord isEventRecord = new IsEventRecord();
                                isEventRecord.setPackageName(contentItem.getId());
                                isEventRecord.setContentType(contentItem.getContentType().toString());
                                isEventRecord.setName(contentItem.getName());
                                isEventRecord.setPositionIndex(i);
                                isEventRecord.setAdvertiserId(contentItem.getAdvertiserID());
                                isEventRecord.setTimeStamp(System.currentTimeMillis() + "");
                                isEventRecord.setWidgetType(str);
                                isEventRecord.setStyleId(str2);
                                DatabaseManager.getInstance(context).getIsEventTable().insertRecord(isEventRecord);
                            }
                        });
                    }
                    break;
                case 4:
                    onlineGameItemClick(context, contentItem, str, str2, i, z);
                    break;
                case 5:
                    if (contentItem.isPromoted()) {
                        EventManager.getInstance(context).m(context, str, str2, contentItem.getName(), contentItem.getAdvertiserID(), contentItem.getId(), i);
                    } else {
                        EventManager.getInstance(context).g(context, str, str2, "Feed Click", "URL", contentItem.getId(), i);
                    }
                    onUrlItemClick(context, contentItem, str, str2, i, z);
                    break;
                case 6:
                    if (!contentItem.isPromoted()) {
                        onExternalLinkItemClick(context, contentItem, str, str2, i);
                    } else {
                        checkForParentalLock(context, new IOnParentalLockStatusListener() { // from class: com.kidoz.sdk.api.general.ContentExecutionHandler.3
                            @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnParentalLockStatusListener
                            public void onLockActive(boolean z2) {
                                if (z2) {
                                    ContentExecutionHandler.onExternalLinkItemClick(context, contentItem, str, str2, i);
                                } else {
                                    EventManager.getInstance(context).h(context, str, str2, EventManager.b, null, "Sponsored Content", "Incorrect Password", contentItem.getId());
                                }
                            }

                            @Override // com.kidoz.sdk.api.general.ContentExecutionHandler.IOnParentalLockStatusListener
                            public void onLockNotActive() {
                                ContentExecutionHandler.onExternalLinkItemClick(context, contentItem, str, str2, i);
                            }
                        });
                    }
                    break;
                case 7:
                    onHtmlItemClick(context, contentItem, str, str2, i, z);
                    break;
            }
            mLastClickActionTimeStamp = System.currentTimeMillis();
            getUiHandlerInstance().removeCallbacksAndMessages(null);
            getUiHandlerInstance().postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.general.ContentExecutionHandler.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IOnHandleClickListener iOnHandleClickListener2 = iOnHandleClickListener;
                        if (iOnHandleClickListener2 != null) {
                            iOnHandleClickListener2.onRestoreClick();
                        }
                    } catch (Exception unused) {
                    }
                }
            }, 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onExternalLinkItemClick(Context context, ContentItem contentItem, String str, String str2, int i) {
        if (contentItem.isPromoted()) {
            EventManager.getInstance(context).m(context, str, str2, contentItem.getName(), contentItem.getAdvertiserID(), contentItem.getId(), i);
        } else {
            EventManager.getInstance(context).g(context, str, str2, "Feed Click", "External Url", contentItem.getId(), i);
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(contentItem.getData()));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    protected static void onGooglePlayApp(Context context, ContentItem contentItem, String str, String str2, int i) {
        if (contentItem.isPromoted()) {
            EventManager.getInstance(context).m(context, str, str2, contentItem.getName(), contentItem.getAdvertiserID(), contentItem.getId(), i);
        } else {
            EventManager.getInstance(context).g(context, str, str2, "Feed Click", "Google Play App", contentItem.getId(), i);
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + contentItem.getId()));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    protected static void onHtmlItemClick(Context context, ContentItem contentItem, String str, String str2, int i, boolean z) {
        new WebPlayerDialog(context, contentItem, str, str2, WebPlayerType.HTML_PLAYBACK, z).openDialog();
    }

    protected static void onPromotedAppItemClick(Context context, ContentItem contentItem, String str, String str2, int i, boolean z) {
        Log.e("LEV", "KIDOZ_LOG  - onPromotedAppItemClick " + contentItem.getData());
        if ((contentItem.getData() == null || !contentItem.getData().contains("market://")) && !contentItem.getData().contains("start.google.com") && !contentItem.getData().contains("play.google.com")) {
            EventManager.getInstance(context).m(context, str, str2, contentItem.getName(), contentItem.getAdvertiserID(), contentItem.getId(), i);
            onUrlItemClick(context, contentItem, str, str2, i, z);
            return;
        }
        try {
            String str3 = "market://details?id=" + contentItem.getId();
            String[] strArrSplit = contentItem.getData().split(contentItem.getId());
            if (strArrSplit != null && strArrSplit.length > 1) {
                str3 = str3 + strArrSplit[1];
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str3));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            onUrlItemClick(context, contentItem, str, str2, i, z);
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to open google start for promoted app: \n" + e2.getMessage());
        }
    }

    protected static void onUrlItemClick(Context context, ContentItem contentItem, String str, String str2, int i, boolean z) {
        WebPlayerType webPlayerType;
        boolean z2;
        WebPlayerType webPlayerType2 = WebPlayerType.WEB_BROWSER;
        if (contentItem == null || contentItem.getContentType() != ContentType.PROMOTED_PLAY_APPLICATION) {
            webPlayerType = webPlayerType2;
            z2 = z;
        } else {
            webPlayerType = WebPlayerType.EXTERNAL_LINK;
            z2 = false;
        }
        WebPlayerDialog webPlayerDialog = new WebPlayerDialog(context, contentItem, str, str2, webPlayerType, z2);
        if (contentItem != null && contentItem.getContentType() == ContentType.PROMOTED_PLAY_APPLICATION) {
            webPlayerDialog.setAutoCloseTimer();
        }
        webPlayerDialog.openDialog();
    }

    protected static void onlineGameItemClick(Context context, ContentItem contentItem, String str, String str2, int i, boolean z) {
        if (contentItem.isPromoted()) {
            EventManager.getInstance(context).m(context, str, str2, contentItem.getName(), contentItem.getAdvertiserID(), contentItem.getId(), i);
        } else {
            EventManager.getInstance(context).g(context, str, str2, "Feed Click", "Online Game", contentItem.getId(), i);
        }
        new WebPlayerDialog(context, contentItem, str, str2, WebPlayerType.ONLINE_GAME, z).openDialog();
    }
}
