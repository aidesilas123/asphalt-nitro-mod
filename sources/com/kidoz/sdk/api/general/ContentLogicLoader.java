package com.kidoz.sdk.api.general;

import android.content.Context;
import android.util.Log;
import com.kidoz.events.EventManager;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.server_connect.ApiResultCallback;
import com.kidoz.sdk.api.server_connect.ResultData;
import com.kidoz.sdk.api.server_connect.SdkAPIManager;
import com.kidoz.sdk.api.structure.ContentData;
import com.kidoz.sdk.api.structure.ContentItem;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class ContentLogicLoader {
    IOnContentDataReadyCallback mDataReadyCallback;
    private boolean mIsLoadContentIsInProgress;

    public interface IOnContentDataReadyCallback {
        void onDataReady(ContentData contentData);

        void onLoadContentFailed();

        void onNoContentOffers();
    }

    public ContentLogicLoader(IOnContentDataReadyCallback iOnContentDataReadyCallback) {
        this.mDataReadyCallback = iOnContentDataReadyCallback;
    }

    public void loadContent(final Context context, final String str, final String str2) {
        if (this.mIsLoadContentIsInProgress) {
            return;
        }
        this.mIsLoadContentIsInProgress = true;
        SdkAPIManager.getSdkApiInstance(context).loadContent(context, str2, str, new ApiResultCallback<ContentData>() { // from class: com.kidoz.sdk.api.general.ContentLogicLoader.1
            @Override // com.kidoz.sdk.api.server_connect.ApiResultCallback
            public void onFailed() {
                IOnContentDataReadyCallback iOnContentDataReadyCallback = ContentLogicLoader.this.mDataReadyCallback;
                if (iOnContentDataReadyCallback != null) {
                    iOnContentDataReadyCallback.onLoadContentFailed();
                }
                ContentLogicLoader.this.mIsLoadContentIsInProgress = false;
            }

            @Override // com.kidoz.sdk.api.server_connect.ApiResultCallback
            public void onServerResult(ResultData<?> resultData) {
                int i;
                if (resultData == null || resultData.getData() == null) {
                    IOnContentDataReadyCallback iOnContentDataReadyCallback = ContentLogicLoader.this.mDataReadyCallback;
                    if (iOnContentDataReadyCallback != null) {
                        iOnContentDataReadyCallback.onLoadContentFailed();
                    }
                } else {
                    ContentData contentData = (ContentData) resultData.getData();
                    contentData.setWidgetType(str);
                    contentData.setStyleID(str2);
                    if (contentData.isHasContentToShow()) {
                        Iterator<ContentItem> it = contentData.getContentDataItems().iterator();
                        int i2 = 0;
                        while (it.hasNext()) {
                            if (it.next().isPromoted()) {
                                i2++;
                            }
                        }
                        i = i2;
                    } else {
                        i = 0;
                    }
                    EventManager.getInstance(context).a(context, str, str2, EventManager.a, "Sponsored Content", "Impression Served", null, i);
                    if (contentData.isHasContentToShow()) {
                        IOnContentDataReadyCallback iOnContentDataReadyCallback2 = ContentLogicLoader.this.mDataReadyCallback;
                        if (iOnContentDataReadyCallback2 != null) {
                            iOnContentDataReadyCallback2.onDataReady(contentData);
                        }
                    } else {
                        IOnContentDataReadyCallback iOnContentDataReadyCallback3 = ContentLogicLoader.this.mDataReadyCallback;
                        if (iOnContentDataReadyCallback3 != null) {
                            iOnContentDataReadyCallback3.onNoContentOffers();
                        }
                    }
                }
                ContentLogicLoader.this.mIsLoadContentIsInProgress = false;
            }
        });
    }

    protected void loadRefreshebleContent(WidgetType widgetType) {
    }

    public void loadWaterfall(final Context context, final String str, final String str2, String str3) {
        if (this.mIsLoadContentIsInProgress) {
            return;
        }
        this.mIsLoadContentIsInProgress = true;
        SdkAPIManager.getSdkApiInstance(context).loadWaterfall(context, str2, str, str3, new ApiResultCallback<ContentData>() { // from class: com.kidoz.sdk.api.general.ContentLogicLoader.2
            @Override // com.kidoz.sdk.api.server_connect.ApiResultCallback
            public void onFailed() {
                IOnContentDataReadyCallback iOnContentDataReadyCallback = ContentLogicLoader.this.mDataReadyCallback;
                if (iOnContentDataReadyCallback != null) {
                    iOnContentDataReadyCallback.onLoadContentFailed();
                }
                ContentLogicLoader.this.mIsLoadContentIsInProgress = false;
            }

            @Override // com.kidoz.sdk.api.server_connect.ApiResultCallback
            public void onServerResult(ResultData<?> resultData) {
                int i;
                if (resultData == null || resultData.getData() == null) {
                    IOnContentDataReadyCallback iOnContentDataReadyCallback = ContentLogicLoader.this.mDataReadyCallback;
                    if (iOnContentDataReadyCallback != null) {
                        iOnContentDataReadyCallback.onLoadContentFailed();
                    }
                } else {
                    ContentData contentData = (ContentData) resultData.getData();
                    contentData.setWidgetType(str);
                    contentData.setStyleID(str2);
                    if (contentData.isHasContentToShow()) {
                        Iterator<ContentItem> it = contentData.getContentDataItems().iterator();
                        int i2 = 0;
                        while (it.hasNext()) {
                            if (it.next().isPromoted()) {
                                i2++;
                            }
                        }
                        i = i2;
                    } else {
                        i = 0;
                    }
                    EventManager.getInstance(context).a(context, str, str2, EventManager.a, "Sponsored Content", "Impression Served", null, i);
                    if (contentData.isHasContentToShow()) {
                        IOnContentDataReadyCallback iOnContentDataReadyCallback2 = ContentLogicLoader.this.mDataReadyCallback;
                        if (iOnContentDataReadyCallback2 != null) {
                            iOnContentDataReadyCallback2.onDataReady(contentData);
                        }
                    } else if (ContentLogicLoader.this.mDataReadyCallback != null) {
                        Log.d("ContentLogicLoader", "loadWaterfall | isHasContentToShow() = false. No offers.");
                        ContentLogicLoader.this.mDataReadyCallback.onNoContentOffers();
                    }
                }
                ContentLogicLoader.this.mIsLoadContentIsInProgress = false;
            }
        });
    }
}
