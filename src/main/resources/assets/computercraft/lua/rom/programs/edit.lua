                if cy < h then1353                    local newY = math.min( math.max( scrollY + cy, 1 ), #tLines )1354                    local newX = math.min( math.max( scrollX + cx, 1 ), string.len( tLines[newY] ) + 1 )1355                    setCursor( newX, newY )1356                end1357            end1358        end1359        1360    elseif sEvent == "mouse_scroll" then1361        if not bMenu then1362            if param == -1 then1363                -- Scroll up1364                if scrollY > 0 then1365                    -- Move cursor up1366                    scrollY = scrollY - 11367                    redrawText()1368                end1369            1370            elseif param == 1 then1371                -- Scroll down1372                local nMaxScroll = #tLines - (h-1)1373                if scrollY < nMaxScroll then1374                    -- Move cursor down1375                    scrollY = scrollY + 11376                    redrawText()1377                end1378                1379            end1380        end13811382    elseif sEvent == "term_resize" then1383        w,h = term.getSize()1384        setCursor( x, y )1385        redrawMenu()1386        redrawText()13871388    end1389end13901391-- Cleanup1392term.clear()1393term.setCursorBlink( false )1394term.setCursorPos( 1, 1 )1395
